package com.queqianme.www.a13_networkimagedownload;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.annotation.Nullable;
import android.util.Xml;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ListView;
import android.widget.TextView;

import com.loopj.android.image.SmartImageView;

import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

import static com.queqianme.www.a13_networkimagedownload.R.id.img_icon;
import static com.queqianme.www.a13_networkimagedownload.R.id.tv_comment;
import static com.queqianme.www.a13_networkimagedownload.R.id.tv_detail;
import static com.queqianme.www.a13_networkimagedownload.R.id.tv_title;

/**
 * Created by liupuyan on 2017/10/20.
 */

public class ListViewActivity extends Activity {

    private ListView lv_list;
    private List<NewModel> newLists;

    Handler handler = new Handler() {
        @Override
        public void handleMessage(Message msg) {
            lv_list.setAdapter(new MyAdapter());
        }
    };

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_listview);

        lv_list = (ListView)findViewById(R.id.lv_list);

        getNewsInfo();
    }

    private void getNewsInfo() {
        new Thread(){
            @Override
            public void run() {
                String path = "http://192.168.40.182/xampp/myfile/news.xml";
                URL url = null;
                try {
                    url = new URL(path);
                    HttpURLConnection connection = (HttpURLConnection)url.openConnection();
                    connection.setRequestMethod("GET");
                    connection.setConnectTimeout(8000);
                    connection.setReadTimeout(8000);
                    if (connection.getResponseCode() == 200) {
                        InputStream is = connection.getInputStream();
                        getNewsFromStream(is);
                    }
                } catch (MalformedURLException e) {
                    e.printStackTrace();
                } catch (ProtocolException e) {
                    e.printStackTrace();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }.start();
    }

    private void getNewsFromStream(InputStream is) {
        // 从xml对象中获取xml解析器
        XmlPullParser xmlPullParser = Xml.newPullParser();
        try {
            xmlPullParser.setInput(is, "utf-8");

            // 获取事件类型，通过事件类型判断当前解析的什么节点
            int type = xmlPullParser.getEventType();
            NewModel newModel = null;
            while (type != XmlPullParser.END_DOCUMENT) {
                switch (type) {
                    case XmlPullParser.START_TAG:
                        if ("newslist".equals(xmlPullParser.getName())) {
                            newLists = new ArrayList<>();
                        } else if ("news".equals(xmlPullParser.getName())){
                            newModel = new NewModel();
                        } else if ("title".equals(xmlPullParser.getName())) {
                            newModel.setTitle(xmlPullParser.nextText());
                        } else if ("detail".equals(xmlPullParser.getName())) {
                            newModel.setDetail(xmlPullParser.nextText());
                        } else if ("comment".equals(xmlPullParser.getName())) {
                            newModel.setComment(xmlPullParser.nextText());
                        } else if ("image".equals(xmlPullParser.getName())) {
                            newModel.setImage(xmlPullParser.nextText());
                        }
                        break;
                    case XmlPullParser.END_TAG:
                        if ("news".equals(xmlPullParser.getName())) {
                            newLists.add(newModel);
                        }
                        break;
                }
                // 移动到下一个节点并返回事件类型
                type = xmlPullParser.next();
            }

            handler.sendEmptyMessage(1);
        } catch (XmlPullParserException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    class MyAdapter extends BaseAdapter {

        @Override
        public int getCount() {
            return newLists.size();
        }

        @Override
        public Object getItem(int position) {
            return null;
        }

        @Override
        public long getItemId(int position) {
            return 0;
        }

        @Override
        public View getView(int position, View convertView, ViewGroup parent) {
            View view = null;
            ViewHolder viewHolder = null;
            if (convertView == null) {
                view = View.inflate(ListViewActivity.this, R.layout.item_row, null);
                viewHolder =  new ViewHolder();
                viewHolder.img_icon = (SmartImageView)view.findViewById(img_icon);
                viewHolder.tv_title = (TextView)view.findViewById(tv_title);
                viewHolder.tv_detail = (TextView)view.findViewById(tv_detail);
                viewHolder.tv_comment = (TextView)view.findViewById(tv_comment);
                view.setTag(viewHolder);
            } else {
                view = convertView;
                viewHolder = (ViewHolder) view.getTag();
            }
            NewModel newModel = newLists.get(position);
            viewHolder.img_icon.setImageUrl(newModel.getImage());
            viewHolder.tv_title.setText(newModel.getTitle());
            viewHolder.tv_detail.setText(newModel.getDetail());
            viewHolder.tv_comment.setText(newModel.getComment() + "条评论");
            return view;
        }

        // 把条目需要使用到的所有组件封装到这个类中
        class ViewHolder {
            SmartImageView img_icon;
            TextView tv_title;
            TextView tv_detail;
            TextView tv_comment;
        }
    }
}
