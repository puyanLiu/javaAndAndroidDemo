package ioTest;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.RandomAccessFile;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.file.Path;
import java.util.Iterator;

/**
 * 多线程下载
 * @author liupuyan
 *
 */
public class ManyThreadDownload {
	
	static String path = "http://192.168.40.182/xampp/myfile/QQ_V6.1.0.dmg";
	// 线程数3
	static int threadCount = 3;
	static int finishedThread = 0;
	
	
	public static void main(String[] args) {
		try {
			URL url = new URL(path);
			HttpURLConnection connection = (HttpURLConnection)url.openConnection();
			connection.setRequestMethod("GET");
			connection.setConnectTimeout(8000);
			connection.setReadTimeout(8000);
			
			if (connection.getResponseCode() == 200) {
				// 获取长度
				int length = connection.getContentLength();
				
				// 创建临时文件
				File file = new File(getNameFromPath(path));
				// d同步写入磁盘
				RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rwd");
				// 设置临时文件大小与目标文件一致
				randomAccessFile.setLength(length);
				randomAccessFile.close();
				System.out.println("临时文件设置完成");
				
				// 计算每个线程下载区间
				int size = length / threadCount;
				
				for (int i = 0; i < threadCount; i++) {
					// 计算每个线程下载的开始位置和结束位置
					int startIndex = i * size;
					int endIndex = (i + 1) * size - 1;
					if (i == threadCount - 1) {
						endIndex = length - 1;
					}
					System.out.println("线程" + i + "下载的区间：" + startIndex + "-" + endIndex);
					new DownloadThread(i, startIndex,endIndex).start();
				}
			}
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public static String getNameFromPath(String path) {
		return path.substring(path.lastIndexOf('/') + 1);
	}
}

class DownloadThread extends Thread {
	
	int threadId;
	int startIndex;
	int endIndex;
	
	public DownloadThread(int threadId, int startIndex, int endIndex) {
		super();
		this.threadId = threadId;
		this.startIndex = startIndex;
		this.endIndex = endIndex;
	}

	@Override
	public void run() {
		try {
			File fileProgress = new File("liu" + threadId + ".txt");
			// 获取上一次存储的位置
			int lastProgress = 0;
			if (fileProgress.exists()) {
				// 读取临时进度文件中的内容
				FileInputStream fileInputStream = new FileInputStream(fileProgress);
				BufferedReader bReader = new BufferedReader(new InputStreamReader(fileInputStream));
				// 得到上一次下载进度
				lastProgress = Integer.parseInt(bReader.readLine());
				// 改变下载的开始位置
				startIndex += lastProgress;
				fileInputStream.close();
			}
			
			
			URL url = new URL(ManyThreadDownload.path);
			HttpURLConnection connection = (HttpURLConnection) url.openConnection();
			connection.setRequestMethod("GET");
			connection.setConnectTimeout(8000);
			connection.setReadTimeout(8000);
			
			// 设置下载区间
			connection.setRequestProperty("Range", "bytes=" + startIndex + "-" + endIndex);
			
			// 请求部分数据，成功的响应吗是206
			if (connection.getResponseCode() == 206) {
				InputStream iStream = connection.getInputStream();
				
				byte[] bs = new byte[1024];
				int len;
				int total = lastProgress;
				File file = new File(ManyThreadDownload.getNameFromPath(ManyThreadDownload.path));
				RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rwd");
				// 设置开始写入位置
				randomAccessFile.seek(startIndex);
				while ((len = iStream.read(bs)) != -1) {
					randomAccessFile.write(bs, 0, len);
					total += len;
					System.out.println("线程" + threadId + "下载了：" + total);
					
					// 创建临时文件，保存下载进度
					RandomAccessFile rafProgress = new RandomAccessFile(fileProgress, "rwd");
					// 每次下载1024字节，就马上把1024写入临时文件
					rafProgress.write((total + "").getBytes());
					rafProgress.close();
				}
				randomAccessFile.close();
				System.out.println("线程" + threadId + "下载完成----------------" + total);
				
				// 3条线程全部下载完毕，才去删除进度临时文件
				ManyThreadDownload.finishedThread++;
				synchronized (ManyThreadDownload.path) {
					if (ManyThreadDownload.finishedThread == ManyThreadDownload.threadCount) {
						for (int i = 0; i < ManyThreadDownload.threadCount; i++) {
							File f = new File("liu" + i + ".txt");
							f.delete();
						}
						ManyThreadDownload.finishedThread = 0;
					}
				}
			}
			
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
