package com.queqianme.www.smartrefreshproject.fragment.index;


import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.StringRes;
import android.support.v4.app.Fragment;
import android.support.v7.widget.DefaultItemAnimator;
import android.support.v7.widget.DividerItemDecoration;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;

import com.queqianme.www.smartrefreshproject.R;
import com.queqianme.www.smartrefreshproject.activity.ExperimentActivity;
import com.queqianme.www.smartrefreshproject.activity.style.BezierStyleActivity;
import com.queqianme.www.smartrefreshproject.activity.style.CircleStyleActivity;
import com.queqianme.www.smartrefreshproject.activity.style.ClassicsStyleActivity;
import com.queqianme.www.smartrefreshproject.activity.style.DeliveryStyleActivity;
import com.queqianme.www.smartrefreshproject.activity.style.DropboxStyleActivity;
import com.queqianme.www.smartrefreshproject.activity.style.FlyRefreshStyleActivity;
import com.queqianme.www.smartrefreshproject.activity.style.FunGameBattleCityStyleActivity;
import com.queqianme.www.smartrefreshproject.activity.style.FunGameHitBlockStyleActivity;
import com.queqianme.www.smartrefreshproject.activity.style.MaterialStyleActivity;
import com.queqianme.www.smartrefreshproject.activity.style.PhoenixStyleActivity;
import com.queqianme.www.smartrefreshproject.activity.style.StoreHouseStyleActivity;
import com.queqianme.www.smartrefreshproject.activity.style.TaurusStyleActivity;
import com.queqianme.www.smartrefreshproject.activity.style.WaterDropStyleActivity;
import com.queqianme.www.smartrefreshproject.activity.style.WaveSwipStyleActivity;
import com.queqianme.www.smartrefreshproject.adapter.BaseRecyclerAdapter;
import com.queqianme.www.smartrefreshproject.adapter.SmartViewHolder;
import com.queqianme.www.smartrefreshproject.util.StatusBarUtil;

import java.util.Arrays;

import static android.R.layout.simple_list_item_2;
import static android.support.v7.widget.DividerItemDecoration.VERTICAL;
import static com.queqianme.www.smartrefreshproject.R.id.recyclerView;

/**
 * 风格展示
 * A simple {@link Fragment} subclass.
 */
public class RefreshStylesFragment extends Fragment implements AdapterView.OnItemClickListener {

    private enum Item {
        Classics(R.string.title_activity_style_classics, ClassicsStyleActivity.class),
        Delivery(R.string.title_activity_style_delivery,DeliveryStyleActivity.class),
        Dropbox(R.string.title_activity_style_dropbox, DropboxStyleActivity.class),
        FlyRefresh(R.string.title_activity_style_flyrefresh, FlyRefreshStyleActivity.class),
        WaveSwipe(R.string.title_activity_style_wave_swip, WaveSwipStyleActivity.class),
        WaterDrop(R.string.title_activity_style_water_drop, WaterDropStyleActivity.class),
        Material(R.string.title_activity_style_material, MaterialStyleActivity.class),
        Phoenix(R.string.title_activity_style_phoenix, PhoenixStyleActivity.class),
        Taurus(R.string.title_activity_style_taurus, TaurusStyleActivity.class),
        Bezier(R.string.title_activity_style_bezier, BezierStyleActivity.class),
        Circle(R.string.title_activity_style_circle, CircleStyleActivity.class),
        FunGameHitBlock(R.string.title_activity_style_fungame_hitblock, FunGameHitBlockStyleActivity.class),
        FunGameBattleCity(R.string.title_activity_style_fungame_battlecity, FunGameBattleCityStyleActivity.class),
        StoreHouse(R.string.title_activity_style_storehouse, StoreHouseStyleActivity.class),
//        Classics(R.string.title_activity_style_classics, ClassicsStyleActivity.class),
        ;
        public int nameId;
        public Class<?> clazz;
        Item(@StringRes int nameId, Class<?> clazz) {
            this.nameId = nameId;
            this.clazz = clazz;
        }

    }

    @Override
    public View onCreateView(@NonNull LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        return inflater.inflate(R.layout.fragment_refresh_styles, container, false);
    }

    @Override
    public void onViewCreated(@NonNull View root, @Nullable Bundle savedInstanceState) {
        super.onViewCreated(root, savedInstanceState);
        StatusBarUtil.setPaddingSmart(getContext(), root.findViewById(R.id.toolbar));

        View view = root.findViewById(recyclerView);
        if (view instanceof RecyclerView) {
            RecyclerView recyclerView = (RecyclerView) view;
            recyclerView.setItemAnimator(new DefaultItemAnimator());
            recyclerView.setLayoutManager(new LinearLayoutManager(getContext()));
            recyclerView.addItemDecoration(new DividerItemDecoration(getContext(), VERTICAL));
            recyclerView.setAdapter(new BaseRecyclerAdapter<Item>(Arrays.asList(Item.values()), simple_list_item_2,this) {
                @Override
                protected void onBindViewHolder(SmartViewHolder holder, Item model, int position) {
                    holder.text(android.R.id.text1, model.name());
                    holder.text(android.R.id.text2, model.nameId);
                    holder.textColorId(android.R.id.text2, R.color.colorTextAssistant);
                }
            });
        }

        root.findViewById(R.id.toolbar).setOnLongClickListener(new View.OnLongClickListener() {
            @Override
            public boolean onLongClick(View v) {
                startActivity(new Intent(getContext(), ExperimentActivity.class));
                return false;
            }
        });

    }

    @Override
    public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
        startActivity(new Intent(getContext(), Item.values()[position].clazz));
    }
}