package camera.com.queqianme.www.grouprecyclerviewadapterproject.demo.activity;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.Log;
import android.view.View;
import android.widget.TextView;
import android.widget.Toast;

import camera.com.queqianme.www.grouprecyclerviewadapterproject.R;
import camera.com.queqianme.www.grouprecyclerviewadapterproject.SideBar.IndexBar;
import camera.com.queqianme.www.grouprecyclerviewadapterproject.demo.adapter.NoFooterAdapter;
import camera.com.queqianme.www.grouprecyclerviewadapterproject.demo.model.GroupModel;
import camera.com.queqianme.www.grouprecyclerviewadapterproject.group.BaseViewHolder;
import camera.com.queqianme.www.grouprecyclerviewadapterproject.group.GroupedRecyclerViewAdapter;
import camera.com.queqianme.www.grouprecyclerviewadapterproject.group.StickyHeaderLayout;

/**
 * 没有组头的分组列表。
 */
public class StickyActivity extends AppCompatActivity {

    private TextView tvTitle;
    private RecyclerView rvList;
    private StickyHeaderLayout stickyLayout;
    private IndexBar indexBar;
    private TextView txtSideBarHint;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_sticky_list);

        tvTitle = (TextView) findViewById(R.id.tv_title);
        rvList = (RecyclerView) findViewById(R.id.rv_list);
        stickyLayout = (StickyHeaderLayout) findViewById(R.id.sticky_layout);
        indexBar = (IndexBar) findViewById(R.id.ib_indexbar);
        txtSideBarHint = (TextView)findViewById(R.id.txtSideBarHint);

        tvTitle.setText(R.string.sticky_list);
        final LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this);
        rvList.setLayoutManager(linearLayoutManager);
        NoFooterAdapter adapter = new NoFooterAdapter(this, GroupModel.getGroups(10, 5));
        adapter.setOnHeaderClickListener(new GroupedRecyclerViewAdapter.OnHeaderClickListener() {
            @Override
            public void onHeaderClick(GroupedRecyclerViewAdapter adapter, BaseViewHolder holder,
                                      int groupPosition) {
                Toast.makeText(StickyActivity.this, "组头：groupPosition = " + groupPosition,
                        Toast.LENGTH_LONG).show();
                Log.e("eee", adapter.toString() + "  " + holder.toString());
            }
        });

        adapter.setOnChildClickListener(new GroupedRecyclerViewAdapter.OnChildClickListener() {
            @Override
            public void onChildClick(GroupedRecyclerViewAdapter adapter, BaseViewHolder holder,
                                     int groupPosition, int childPosition) {
                Toast.makeText(StickyActivity.this, "子项：groupPosition = " + groupPosition
                                + ", childPosition = " + childPosition,
                        Toast.LENGTH_LONG).show();
            }
        });
        rvList.setAdapter(adapter);

        // 设置触摸监听器
        indexBar.setmOnIndexPressedListener(new IndexBar.OnIndexPressedListener() {
            @Override
            public void onIndexPressed(int index, String text) {
                if (null != txtSideBarHint) {
                    txtSideBarHint.setVisibility(View.VISIBLE);
                    txtSideBarHint.setText(text);
                }
                // 滑动recycleView
                if (null != linearLayoutManager) {
                    int position = getPosition(text);
                    if (position != -1) {
                        // 使用LinearLayoutManager的scrollToPositionWithOffset(int position, int offset) 方法，offset 传入0，postion 即目标 postion 即可。
                        // 如果使用 RecyclerView.scrollToPosition();等方法，滑动会很飘~定位不准
                        linearLayoutManager.scrollToPositionWithOffset(position, 0);
                    }
                }
            }

            @Override
            public void onMotionEventEnd() {
                // 隐藏中间的文本
                if (null != txtSideBarHint) {
                    txtSideBarHint.setVisibility(View.GONE);
                }
            }
        });

        //设置是否吸顶。
//        stickyLayout.setSticky(true);
    }

    public int getPosition(String tag) {
        return -1;
    }

    public static void openActivity(Context context) {
        Intent intent = new Intent(context, StickyActivity.class);
        context.startActivity(intent);
    }
}
