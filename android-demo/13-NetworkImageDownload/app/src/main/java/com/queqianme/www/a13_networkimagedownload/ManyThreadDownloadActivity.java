package com.queqianme.www.a13_networkimagedownload;

import android.app.Activity;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.support.annotation.Nullable;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;

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

/**
 * Created by liupuyan on 2017/10/24.
 */

public class ManyThreadDownloadActivity extends Activity {

    String path = "http://192.168.40.182/xampp/myfile/QQ_V6.1.0.dmg";
    // 线程数3
    int threadCount = 3;
    int finishedThread = 0;
    // 所有线程下载总进度
    int downloadProgress = 0;

    private TextView tv;
    private ProgressBar pb;

    Handler handler = new Handler() {
        @Override
        public void handleMessage(Message msg) {
            tv.setText((long)pb.getProgress() * 100 / pb.getMax() + "%");
        }
    };

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_download);

        tv = (TextView)findViewById(R.id.tv);
        pb = (ProgressBar)findViewById(R.id.pb);
    }

    public void click(View v) {
        new Thread() {
            @Override
            public void run() {
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
                        File file = new File(Environment.getExternalStorageDirectory(), getNameFromPath(path));
                        // d同步写入磁盘
                        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rwd");
                        // 设置临时文件大小与目标文件一致
                        randomAccessFile.setLength(length);
                        randomAccessFile.close();
                        System.out.println("临时文件设置完成");

                        pb.setMax(length);

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
        }.start();
    }


    public String getNameFromPath(String path) {
        return path.substring(path.lastIndexOf('/') + 1);
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
//                File fileProgress = new File(Environment.getExternalStorageDirectory(), "liu" + threadId + ".txt");
                File fileProgress = new File(getCacheDir(), "liu" + threadId + ".txt");
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

                    // 把文本中的值加入
                    downloadProgress += lastProgress;
                    handler.sendEmptyMessage(1);
                }


                URL url = new URL(path);
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
                    File file = new File(getCacheDir(), getNameFromPath(path));
                    RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rwd");
                    // 设置开始写入位置
                    randomAccessFile.seek(startIndex);
                    while ((len = iStream.read(bs)) != -1) {
                        randomAccessFile.write(bs, 0, len);
                        total += len;
                        downloadProgress += len;
                        pb.setProgress(downloadProgress);
                        System.out.println("线程" + threadId + "下载了：" + total);

                        // 创建临时文件，保存下载进度
                        RandomAccessFile rafProgress = new RandomAccessFile(fileProgress, "rwd");
                        // 每次下载1024字节，就马上把1024写入临时文件
                        rafProgress.write((total + "").getBytes());
                        rafProgress.close();

                        // 发送消息 让文本进度值改变
                        handler.sendEmptyMessage(1);
                    }
                    randomAccessFile.close();
                    System.out.println("线程" + threadId + "下载完成----------------" + total);

                    // 3条线程全部下载完毕，才去删除进度临时文件
                    finishedThread++;
                    synchronized (path) {
                        if (finishedThread == threadCount) {
                            for (int i = 0; i < threadCount; i++) {
                                File f = new File(getCacheDir(), "liu" + i + ".txt");
                                f.delete();
                            }
                            finishedThread = 0;
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
}
