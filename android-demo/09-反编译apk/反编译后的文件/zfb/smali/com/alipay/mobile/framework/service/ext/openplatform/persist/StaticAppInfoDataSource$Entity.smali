.class public Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;
.super Ljava/lang/Object;
.source "StaticAppInfoDataSource.java"


# static fields
.field public static sEntitys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v3, 0x1

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 201
    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u7231\u5fc3\u6350\u8d60"

    const-string/jumbo v2, "10000009"

    const-string/jumbo v4, ""

    const-string/jumbo v6, "http://tfs.alipayobjects.com/L1/71/10001/10000009/5_0_4_27/1442836571147_10000009-5_0_4_27+TAR.amr"

    const-string/jumbo v7, "{\"canSearch\":\"true\",\"launchParams\":{\"url\":\"/www/my.htm\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"showLoading\":\"NO\",\"canPullDown\":\"NO\",\"waitRender\":\"300\"},\"host\":{\"dev\":\"http://10000009.h5app.alipay.net\",\"test\":\"http://10000009.h5app.test.alipay.net\",\"online\":\"https://10000009.h5app.alipay.com\"}}"

    const-string/jumbo v8, "app_10000009"

    const-string/jumbo v9, "H5App"

    const-string/jumbo v10, "10000009-5_0_4_27+TAR.amr"

    const-string/jumbo v11, "5.0.4.27"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u6821\u56ed\u4e00\u5361\u901a"

    const-string/jumbo v2, "2013062600000474"

    const-string/jumbo v4, ""

    const-string/jumbo v6, "https://t.alipayobjects.com/L1/71/10001/2013062600000474/1_3_3_1509291645/_campuscard-build-1.3.3.1509291645.20151015-nolog.jar"

    const-string/jumbo v7, "{\"canSearch\":\"true\"}"

    const-string/jumbo v8, "app_2013062600000474"

    const-string/jumbo v9, "innerApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.3.3.1509291645"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u8bbe\u7f6e"

    const-string/jumbo v2, "20000725"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{\"canSearch\":\"false\"}"

    const-string/jumbo v8, "app_20000725"

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.0"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u8bb0\u8d26\u672c"

    const-string/jumbo v2, "20000168"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{\"canSearch\":\"true\"}"

    const-string/jumbo v8, "app_20000168"

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.1.0.1"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u6536\u85cf"

    const-string/jumbo v2, "20000245"

    const-string/jumbo v4, "\u6536\u85cf\u6587\u672c\u3001\u8bed\u97f3\u3001\u56fe\u7247\u53ca\u94fe\u63a5\u7b49\u4fe1\u606f\u7684\u5e94\u7528"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{\"canSearch\":\"false\",\"target\":\"present\",\"selfApp\":\"1\",\"nameForUserStage\":\"\u6536\u85cf\",\"iconForUserStage\":\"http://tfs.alipayobjects.com/L1/71/10001/20150506/1_0_0_0/1434350224749_icon_L.png\"}"

    const-string/jumbo v8, "app_20000245"

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.0"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u6536\u6b3e"

    const-string/jumbo v2, "20000123"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{\"canSearch\":\"true\"}"

    const-string/jumbo v8, "app_20000123"

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.1"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u6211\u7684\u5feb\u9012"

    const-string/jumbo v2, "20000046"

    const-string/jumbo v4, ""

    const-string/jumbo v6, "https://t.alipayobjects.com/L1/71/10001/20000046/1_3_3_1509251355/_logistics-build-1.3.3.1509251355.20151015-nolog.jar"

    const-string/jumbo v7, "{\"canSearch\": \"true\"}"

    const-string/jumbo v8, "app_20000046"

    const-string/jumbo v9, "innerApp"

    const-string/jumbo v10, "1437464351973_logistics-build-1.3.0.1506261137.20150630-nolog.jar"

    const-string/jumbo v11, "1.3.3.1509251355"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u8f6c\u8d26"

    const-string/jumbo v2, "20000244"

    const-string/jumbo v4, "\u7fa4\u5185\u591a\u4eba\u5feb\u901f\u8f6c\u8d26\u7684\u5e94\u7528"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{\"canSearch\":\"false\",\"mainType\":\"0\",\"actionType\":\"lotpay\"}"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.0"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u6559\u80b2\u7f34\u8d39"

    const-string/jumbo v2, "2014021200003129"

    const-string/jumbo v4, ""

    const-string/jumbo v6, "http://tfs.alipayobjects.com/L1/71/10001/2014021200003129/3_0_1_1/_2014021200003129-3_0_1_1+TAR.amr"

    const-string/jumbo v7, "{\"canSearch\":\"true\",\"launchParams\":{\"url\":\"/www/edu/index.html\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"showLoading\":\"NO\",\"_appId\":\"2014021200003129\"},\"host\":{\"dev\":\"http://2014021200003129.h5app.alipay.net\",\"test\":\"http://2014021200003129.h5app.test.alipay.net\",\"online\":\"https://2014021200003129.h5app.alipay.com\"}}"

    const-string/jumbo v8, "app_2014021200003129"

    const-string/jumbo v9, "H5App"

    const-string/jumbo v10, "2014021200003129-3_0_1_1+TAR.amr"

    const-string/jumbo v11, "3.0.1.1"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u624b\u673a\u5145\u503c"

    const-string/jumbo v2, "10000003"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{\"canSearch\":\"true\"}"

    const-string/jumbo v8, "app_10000003"

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "2.0.5.2"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u6dd8\u5b9d"

    const-string/jumbo v2, "2013082800000932"

    const-string/jumbo v4, "\u6dd8\u5b9d\u5b98\u65b9\u5ba2\u6237\u7aef"

    const-string/jumbo v6, "http://tfs.alipayobjects.com/L1/71/10001/2013082800000932/4_8_0/1423583192318_taobao4android_10000385.apk"

    const-string/jumbo v7, "{\"canSearch\":\"false\"}"

    const-string/jumbo v8, "app_2013082800000932"

    const-string/jumbo v9, "independantApp"

    const-string/jumbo v10, "com.taobao.taobao"

    const-string/jumbo v11, "4.8.2"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u9644\u8fd1"

    const-string/jumbo v2, "20000689"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{\"canSearch\":\"false\",\"launchParams\": {\"url\": \"https://o.alipay.com/o2o/?action=nearby\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"canPullDown\":\"NO\",\"showOptionMenu\":\"NO\",\"defaultTitle\":\"\u9644\u8fd1\", \"showTitleLoading\":\"YES\"}}"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "H5App"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.3"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u4eb2\u60c5\u8d26\u6237"

    const-string/jumbo v2, "20000205"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{\"canSearch\":\"true\"}"

    const-string/jumbo v8, "app_20000205"

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.1"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u65b0\u6d88\u606f\u901a\u77e5"

    const-string/jumbo v2, "20000722"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{\"canSearch\":\"true\"}"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.1"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u7ea2\u5305"

    const-string/jumbo v2, "20000688"

    const-string/jumbo v4, "\u7fa4\u5c55\u53f0\uff0c\u9009\u62e9\u7fa4\u7ea2\u5305\u8fdb\u5165\u7fa4\u7ea2\u5305\u8868\u5355\u9875"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{\"canSearch\":\"false\",\"nameForUserStage\":\"\u7ea2\u5305\",\"target\":\"group\",\"schemeMode\":\"portalInside\",\"prevBiz\": \"chat\"}"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.0"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u626b\u4e00\u626b"

    const-string/jumbo v2, "10000007"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{\"canSearch\":\"false\"}"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "5.1.0.2"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u804a\u5929"

    const-string/jumbo v2, "20000724"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    const-string/jumbo v8, ""

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.0"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u624b\u673a\u5b9d\u4ee4"

    const-string/jumbo v2, "10000008"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{\"canSearch\":\"false\"}"

    const-string/jumbo v8, "app_10000008"

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "4.0.0.2"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u9690\u79c1"

    const-string/jumbo v2, "20000723"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{\"canSearch\":\"false\"}"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.1"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u9001\u4fdd\u969c"

    const-string/jumbo v2, "20000171"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{\"canSearch\":\"false\"}"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.0"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u9001\u7535\u5f71\u5238"

    const-string/jumbo v2, "20000170"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{\"canSearch\":\"false\"}"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.0"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u8d26\u53f7\u4f30\u503c"

    const-string/jumbo v2, "20000690"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{\"canSearch\":\"false\",\"launchParams\": {\"url\": \"http://huodong.m.taobao.com/topic/alipaySudoku/index.html\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"showLoading\":\"NO\",\"pullRefresh\":\"YES\",\"ssoLoginEnabled\":\"YES\"}}"

    const-string/jumbo v8, "app_20000690"

    const-string/jumbo v9, "H5App"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "2.2.3.1"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u6dd8\u5b9d\u7535\u5f71"

    const-string/jumbo v2, "20000131"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{\"canSearch\":\"true\"}"

    const-string/jumbo v8, "app_20000131"

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "8.3.0.1"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u5feb\u7684\u6253\u8f66"

    const-string/jumbo v2, "20000130"

    const-string/jumbo v4, ""

    const-string/jumbo v6, "http://tfs.alipayobjects.com/L1/71/10001/20000130/2_1_1_3/_20000130-2_1_1_3+TAR.amr"

    const-string/jumbo v7, "{\"canSearch\":\"false\",\"launchParams\":{\"url\":\"/www/index.html\", \"showTitleBar\": \"YES\",\"showToolBar\": \"NO\",\"showLoading\":\"NO\",\"canPullDown\": \"NO\",\"safePayEnabled\":\"YES\",\"readTitle\":\"YES\",\"closeAfterPayFinish\":\"NO\",\"closeAfterPay\":\"NO\",\"defaultTitle\":\"\u6ef4\u6ef4\u51fa\u884c\",\"ca\":\"NO\",\"backBehavior\":\"back\"},\"host\":{\"enable\":\"true\",\"dev\":\"http://20000130.h5app.alipay.net\",\"test\":\"http://20000130.h5app.test.alipay.net\",\"online\":\"https://20000130.h5app.alipay.com\"}}"

    const-string/jumbo v8, "app_20000130"

    const-string/jumbo v9, "H5App"

    const-string/jumbo v10, "20000130-2_1_0_6+TAR.amr"

    const-string/jumbo v11, "2.1.1.3"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u6211\u7684\u5ba2\u670d"

    const-string/jumbo v2, "20000691"

    const-string/jumbo v4, ""

    const-string/jumbo v6, "http://tfs.alipayobjects.com/L1/71/10001/20000691/1_0_1_04/_20000691-1_0_1_04+TAR.amr"

    const-string/jumbo v7, "{\"canSearch\":\"true\",\"launchParams\":{\"url\":\"/www/src/index.htm\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"showLoading\":\"NO\",\"defaultTitle\":\"\u6211\u7684\u5ba2\u670d\",\"showOptionMenu\":\"YES\",\"canPullDown\":\"NO\"},\"host\":{\"dev\":\"http://mypa.h5app.alipay.net\",\"test\":\"https://mypa.h5app.test.alipay.net\",\"online\":\"https://mypa.h5app.alipay.com\"}}"

    const-string/jumbo v8, "app_20000691"

    const-string/jumbo v9, "H5App"

    const-string/jumbo v10, "20000691-1_0_0_71+TAR.amr"

    const-string/jumbo v11, "1.0.1.04"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u4ed8\u6b3e"

    const-string/jumbo v2, "20000056"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{\"canSearch\":\"false\"}"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.2"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u4eb2\u5bc6\u4ed8"

    const-string/jumbo v2, "20000132"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{\"canSearch\":\"true\"}"

    const-string/jumbo v8, "app_20000132"

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.2"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u5f69\u7968"

    const-string/jumbo v2, "10000011"

    const-string/jumbo v4, ""

    const-string/jumbo v6, "http://tfs.alipayobjects.com/L1/71/10001/10000011/3_8_1_2/1435569119427_10000011-3_8_1_2-pro+TAR.amr"

    const-string/jumbo v7, "{\"launchParams\":{\"enableFallback\":false,\"url\":\"/www/lottery/index.html\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"showLoading\":\"NO\"},\"host\":{\"dev\":\"http://caipiao.waptest.taobao.net\",\"test\":\"http://caipiao.wapa.taobao.com\",\"online\":\"http://caipiao.m.taobao.com\"}}"

    const-string/jumbo v8, "app_10000011"

    const-string/jumbo v9, "H5App"

    const-string/jumbo v10, "10000011-3_8_1_2-pro+TAR.amr"

    const-string/jumbo v11, "3.8.1.2"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u56fe\u7247"

    const-string/jumbo v2, "20000219"

    const-string/jumbo v4, "\u5524\u8d77\u624b\u673a\u76f8\u518c\uff0c\u9009\u62e9\u76f8\u518c\u5e76\u53d1\u9001\u7684\u5e94\u7528"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{\"canSearch\":\"false\",\"selfApp\":\"1\"}"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.0"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u5929\u732b\u8d85\u5e02"

    const-string/jumbo v2, "20000739"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{\"canSearch\":\"true\",\"launchParams\":{\"url\":\"http://chaoshi.m.tmall.com/\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"canPullDown\":\"NO\"}}"

    const-string/jumbo v8, "app_20000739"

    const-string/jumbo v9, "H5App"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.0"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u673a\u7968\u706b\u8f66\u7968"

    const-string/jumbo v2, "20000135"

    const-string/jumbo v4, ""

    const-string/jumbo v6, "http://tfs.alipayobjects.com/L1/71/10001/20000135/1_8_38_5/1443078898696_h5-flight_alipay.amr"

    const-string/jumbo v7, "{\"launchParams\":{\"url\":\"/build_offline/pages/search/index.html?ttid=12zfb0000098\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"showLoading\":\"NO\",\"ttid\":\"12zfb0000098\",\"backBehavior\":\"back\"},\"host\":{\"dev\":\"http://20000135.h5app.waptest.taobao.com\",\"test\":\"http://20000135.h5app.waptest.taobao.com\",\"online\":\"http://20000135.h5app.m.taobao.com\",\"enable\":true}}"

    const-string/jumbo v8, "app_20000135"

    const-string/jumbo v9, "H5App"

    const-string/jumbo v10, "h5-flight_alipay.amr"

    const-string/jumbo v11, "1.8.38.5"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u80a1\u7968"

    const-string/jumbo v2, "20000134"

    const-string/jumbo v4, "\u7092\u80a1\u3001\u8bc1\u5238\u3001\u5238\u5546\u3001\u884c\u60c5\u3001\u6da8\u8dcc\u3001\u5e02\u503c\u3001\u4ea4\u6613\u6240\u3001\u7f8e\u80a1\u3001\u6e2f\u80a1\u3001\u6caa\u6df1/\u652f\u6301A\u80a1\u3001H\u80a1\u3001\u7f8e\u80a1\u884c\u60c5\u67e5\u8be2"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{\"canSearch\":\"true\"}"

    const-string/jumbo v8, "app_20000134"

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "8.3.0.2"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "AA\u6536\u6b3e"

    const-string/jumbo v2, "20000258"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{\"actionType\":\"form\",\"actionId\":\"aa\",\"sourceId\":\"launcher\",\"searchExtra\":\"{\'actionType\':\'form\',\'actionId\':\'aa\',\'sourceId\':\'launcher\'}\",\"canSearch\":\"true\"}"

    const-string/jumbo v8, "app_20000258"

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.0"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u88c5\u673a\u5fc5\u5907"

    const-string/jumbo v2, "10000114"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{\"launchParams\":{\"url\":\"https://ds.alipay.com/zjbb/zjbb.htm\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"canPullDown\":\"NO\"}}"

    const-string/jumbo v8, "app_10000114"

    const-string/jumbo v9, "H5App"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.3.8"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u53bb\u554a\u5468\u8fb9\u6e38"

    const-string/jumbo v2, "20000697"

    const-string/jumbo v4, ""

    const-string/jumbo v6, "http://tfs.alipayobjects.com/L1/71/10001/20000697/0_0_22_1/1439178715809_20000697-0_0_22_1-publish+TAR.amr"

    const-string/jumbo v7, "{\"canSearch\":\"false\",\"launchParams\": {\"url\": \"/build_offline/pages/search/index.html\",\"showTitleBar\": \"YES\",\"showToolBar\": \"NO\",\"showLoading\": \"NO\",\"ttid\": \"12zfb0000157\"},\"host\": {\"dev\": \"http://20000697.h5app.waptest.taobao.com\",\"test\": \"http://20000697.h5app.waptest.taobao.com\",\"online\": \"http://20000697.h5app.m.taobao.com\",\"enable\": true}}"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "H5App"

    const-string/jumbo v10, "20000697-0_0_22_1-publish+TAR.amr"

    const-string/jumbo v11, "0.0.22.1"

    move v5, v12

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u9152\u5e97"

    const-string/jumbo v2, "20000139"

    const-string/jumbo v4, ""

    const-string/jumbo v6, "http://tfs.alipayobjects.com/L1/71/10001/20000139/1_1_12_17/_h5-hotel_alipay.amr"

    const-string/jumbo v7, "{\"launchParams\":{\"url\":\"/build_offline/pages/search/index.html\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"showLoading\":\"NO\",\"ttid\":\"\"},\"host\":{\"dev\":\"http://20000139.h5app.waptest.taobao.com\",\"test\":\"http://20000139.h5app.waptest.taobao.com\",\"online\":\"http://20000139.h5app.m.taobao.com\",\"enable\":true},\"canSearch\":true}"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "H5App"

    const-string/jumbo v10, "20000139-1_1_12_0-publish+TAR.amr"

    const-string/jumbo v11, "1.1.12.17"

    move v5, v12

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u6d3b\u52a8\u6536\u6b3e"

    const-string/jumbo v2, "20000259"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{\"actionType\":\"form\",\"actionId\":\"general\"}"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.0"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u8682\u8681\u5fae\u670d"

    const-string/jumbo v2, "20000735"

    const-string/jumbo v4, ""

    const-string/jumbo v6, "https://t.alipayobjects.com/L1/71/10001/20000735/1_0_3_81/_20000735-1_0_3_81+TAR.amr"

    const-string/jumbo v7, "{\"canSearch\":\"false\",\"launchParams\":{\"url\":\"/www/index.html\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"showLoading\":\"NO\",\"defaultTitle\":\"\u8682\u8681\u5fae\u670d\",\"showOptionMenu\":\"NO\",\"canPullDown\":\"NO\",\"prefetchLocation\":\"YES\"},\"host\":{\"enable\":true,\"dev\":\"http://socialportal.h5app.alipay.net\",\"test\":\"http://socialportal.h5app.alipay.net\",\"online\":\"https://socialportal.h5app.alipay.com\"}}"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "H5App"

    const-string/jumbo v10, "20000735-1_0_3_62+TAR.amr"

    const-string/jumbo v11, "1.0.3.81"

    move v5, v12

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u5b58\u91d1\u5b9d"

    const-string/jumbo v2, "20000218"

    const-string/jumbo v4, ""

    const-string/jumbo v6, "http://tfs.alipayobjects.com/L1/71/10001/20000218/1_0_0_30/1433231730231_20000218-1_0_0_30+TAR.amr"

    const-string/jumbo v7, "{\"canSearch\":\"false\",\"launchParams\":{\"url\":\"/www/index.htm\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"showLoading\":\"NO\",\"readTitle\":\"NO\",\"defaultTitle\":\"\u5b58\u91d1\u5b9d\",\"showOptionMenu\":\"NO\"},\"host\":{\"dev\":\"http://goldetfprod.h5app.alipay.net\",\"test\":\"https://goldetfprod.h5app.test.alipay.net\",\"online\":\"https://goldetfprod.h5app.alipay.com\"}}"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "H5App"

    const-string/jumbo v10, "20000218-1_0_0_30.amr"

    const-string/jumbo v11, "1.0.0.30"

    move v5, v12

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u6ef4\u6ef4\u51fa\u884c"

    const-string/jumbo v2, "20000778"

    const-string/jumbo v4, "\u6ef4\u6ef4 \u51fa\u884c \u6253\u8f66"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{\"canSearch\":\"true\",\"launchParams\":{\"url\":\"https://openauth.alipay.com/oauth2/publicAppAuthorize.htm?app_id=2015042700050887&auth_skip=false&scope=auth_base&redirect_uri=http%3A%2F%2Fpay.xiaojukeji.com%2Fapi%2Fv2%2Fweixinapi%3Fsource%3Dalipay_wallet\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"canPullDown\":\"NO\",\"showOptionMenu\":\"NO\",\"defaultTitle\":\"\u6ef4\u6ef4\u51fa\u884c\",\"showProgress\":\"YES\",\"closeAfterPayFinish\":\"NO\",\"closeAfterPay\":\"NO\",\"ca\":\"NO\",\"backBehavior\":\"back\"}}"

    const-string/jumbo v8, "app_20000778"

    const-string/jumbo v9, "H5App"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.5"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u6c5f\u6e56\u6551\u6025"

    const-string/jumbo v2, "20000260"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{\"actionType\":\"form\",\"actionId\":\"emergency\"}"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.0"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u5c0f\u89c6\u9891"

    const-string/jumbo v2, "20000780"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    const-string/jumbo v8, ""

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.0"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "AA\u6536\u6b3e"

    const-string/jumbo v2, "20000263"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{\"actionType\":\"form\",\"actionId\":\"aa\"}"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.0"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u5a31\u4e50\u5b9d"

    const-string/jumbo v2, "20000142"

    const-string/jumbo v4, ""

    const-string/jumbo v6, "https://t.alipayobjects.com/L1/71/10001/20000142/2_4_0_28/_20000142-2_4_0_28+TAR.amr"

    const-string/jumbo v7, "{\"launchParams\":{\"url\":\"/build/page/home.html\",\"pullRefresh\": \"YES\"},\"host\":{\"enable\":true,\"dev\":\"http://20000142.h5app.alipay.net\",\"test\": \"http://20000142.h5app.test.alipay.net\",\"online\":\"https://20000142.h5app.alipay.com\"}}"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "H5App"

    const-string/jumbo v10, "20000142-2_4_0_17+TAR.amr"

    const-string/jumbo v11, "2.4.0.28"

    move v5, v12

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u8f6c\u8d26"

    const-string/jumbo v2, "20000221"

    const-string/jumbo v4, "\u666e\u901a1\u5bf91\u8f6c\u8d26"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{\"canSearch\":\"false\",\"strangerApp\":\"1\"}"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.0"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u52a0\u6cb9\u670d\u52a1"

    const-string/jumbo v2, "20000781"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{\"launchParams\":{\"url\":\"https://ds.alipay.com/cityService/jiayou.htm\",\"showTitlebar\":\"YES\",\"showToolBar\":\"NO\",\"defaultTitle\":\"\u52a0\u6cb9\u670d\u52a1\",\"showProgress\": \"YES\",\"canPullDown\": \"NO\"}}"

    const-string/jumbo v8, "app_20000781"

    const-string/jumbo v9, "H5App"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.0"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u706b\u8f66\u7968"

    const-string/jumbo v2, "20000143"

    const-string/jumbo v4, ""

    const-string/jumbo v6, "http://tfs.alipayobjects.com/L1/71/10001/20000143/0_4_1_0/1442299179577_20000143-0_4_1_0-publish+TAR.amr"

    const-string/jumbo v7, "{\"canSearch\":\"false\",\"launchParams\":{\"url\":\"/build_offline/pages/search/index.html\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"showLoading\":\"NO\",\"ttid\":\"12zfb0000099\"},\"host\":{\"dev\":\"http://20000143.h5app.waptest.taobao.com\",\"test\":\"http://20000143.h5app.waptest.taobao.com\",\"online\":\"http://20000143.h5app.m.taobao.com\",\"enable\":true}}"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "H5App"

    const-string/jumbo v10, "20000143-0_4_1_0-publish+TAR.amr"

    const-string/jumbo v11, "0.4.1.0"

    move v5, v12

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u6d77\u5916\u76f4\u8d2d"

    const-string/jumbo v2, "20000109"

    const-string/jumbo v4, ""

    const-string/jumbo v6, "http://tfs.alipayobjects.com/L1/71/10001/20000109/1_0_1_40/1442407992559_20000109-1_0_1_40+TAR.amr"

    const-string/jumbo v7, "{\"launchParams\":{\"url\":\"/www/oatpexprod/0.1.0/src/orderDetail.htm\",\"showTitleBar\":\"YES\",\"readTitle\":\"YES\",\"defaultTitle\":\"\",\"showToolBar\":\"NO\",\"showLoading\":\"YES\"},\"host\":{\"dev\":\"http://20000109.h5app.alipay.net\",\"test\":\"http://20000109.h5app.test.alipay.net\",\"online\":\"https://20000109.h5app.alipay.com\"}}"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "H5App"

    const-string/jumbo v10, "1442407992559_20000109-1_0_1_40+TAR.amr"

    const-string/jumbo v11, "1.0.1.40"

    move v5, v12

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u6211\u7684\u5feb\u9012\uff08\u6dd8\u5b9d\uff09"

    const-string/jumbo v2, "20000146"

    const-string/jumbo v4, ""

    const-string/jumbo v6, "http://tfs.alipayobjects.com/L1/71/10001/20000146/1_2_0_22/1433233756875_20000146-1_2_0_22+TAR.amr"

    const-string/jumbo v7, "{\"canSearch\":\"false\",\"launchParams\":{\"url\":\"/www/home/index.html\",\"showTitleBar\":\"YES\",\"offlineH5SsoLoginFirst\":\"YES\",\"showToolBar\":\"NO\",\"showLoading\":\"NO\"},\"host\":{\"enable\":true,\"dev\":\"http://20000146.h5app.waptest.taobao.net\",\"test\":\"http://20000146.h5app.waptest.taobao.net\",\"online\":\"http://20000146.h5app.m.taobao.com\"}}"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "H5App"

    const-string/jumbo v10, "20000146-1_2_0_22+TAR.amr"

    const-string/jumbo v11, "1.2.0.22"

    move v5, v12

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u670d\u52a1\u7a97"

    const-string/jumbo v2, "20000101"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{\"canSearch\":\"true\"}"

    const-string/jumbo v8, "app_20000101"

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.2"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u652f\u4ed8\u8bbe\u7f6e"

    const-string/jumbo v2, "20000024"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{\"canSearch\":\"true\"}"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.1"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u501f\u6761"

    const-string/jumbo v2, "20000225"

    const-string/jumbo v4, ""

    const-string/jumbo v6, "http://tfs.alipayobjects.com/L1/71/10001/20000225/1_0_5_108/_20000225-1_0_5_108+TAR.amr"

    const-string/jumbo v7, "{\"canSearch\":\"false\",\"launchParams\":{\"url\":\"/www/pages/lend.html#router=lend-zt\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"showOptionMenu\":\"NO\",\"backgroundColor\":16119289,\"showLoading\":\"NO\"},\"host\":{\"enable\":true,\"dev\":\"https://20000225.h5app.alipay.net\",\"test\":\"https://20000225.h5app.test.alipay.net\",\"online\":\"https://20000225.h5app.alipay.com\"}}"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "H5App"

    const-string/jumbo v10, "1438754953636_20000225-1_0_4_104 TAR.amr"

    const-string/jumbo v11, "1.0.5.108"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u5546\u5bb6"

    const-string/jumbo v2, "20000224"

    const-string/jumbo v4, "\u5524\u8d77\u5546\u5bb6\u5217\u8868\uff0c\u5206\u4eab\u5546\u5bb6\u4fe1\u606f\u7684\u5e94\u7528"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{\"canSearch\":\"false\",\"target\":\"merchantChoose\"}"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.0"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u5403\u8d27\u7fa4"

    const-string/jumbo v2, "20000700"

    const-string/jumbo v4, "\u4e00\u8d77\u4e70\u5355\uff0c\u8f7b\u677e\u4ed8\u6b3e"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{\"canSearch\":\"false\",\"mainType\":\"1\",\"preCheck\":true,\"bizType\":\"4\",\"actionType\":\"payTogether\",\"launchParams\":{\"url\":\"https://ds.alipay.com/socialprod/payTogether.htm\",\"showOptionMenu\":\"NO\",\"canPullDown\":\"NO\",\"backgroundColor\":\"15790326\"}}"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.0"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u5361\u5238"

    const-string/jumbo v2, "20000227"

    const-string/jumbo v4, "\u5524\u8d77\u5361\u5238\u5217\u8868\uff0c\u8d60\u9001\u5361\u5238\u7684\u5e94\u7528"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{\"canSearch\":\"false\",\"b\":\"d\",\"a\":\"ltzs\"}"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.0"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u4f4d\u7f6e"

    const-string/jumbo v2, "20000226"

    const-string/jumbo v4, "\u5206\u4eab\u5f53\u524d\u5730\u7406\u4f4d\u7f6e\u7684\u5e94\u7528"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{\"canSearch\":\"false\",\"selfApp\":\"1\"}"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.0"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u5883\u5916\u6e38"

    const-string/jumbo v2, "20000107"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{\"launchParams\":{\"url\":\"https://ds.alipay.com/travel/jwy.htm\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"showLoading\":\"NO\",\"readTitle\":\"NO\",\"defaultTitle\":\"\u5883\u5916\u6e38\"},\"host\":{\"dev\":\"http://20000107.h5app.alipay.net\",\"test\":\"http://20000107.h5app.test.alipay.net\",\"online\":\"https://20000107.h5app.alipay.com\"}}"

    const-string/jumbo v8, "app_20000107"

    const-string/jumbo v9, "H5App"

    const-string/jumbo v10, "jwy.htm"

    const-string/jumbo v11, "4.0.0.2"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u540d\u7247"

    const-string/jumbo v2, "20000228"

    const-string/jumbo v4, "\u5206\u4eab\u670b\u53cb\u548c\u670d\u52a1\u7a97\u540d\u724c\u7684\u5e94\u7528"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{\"canSearch\":\"false\",\"selfApp\":\"1\"}"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.0"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u751f\u6d3b\u7f34\u8d39"

    const-string/jumbo v2, "20000193"

    const-string/jumbo v4, ""

    const-string/jumbo v6, "https://t.alipayobjects.com/L1/71/10001/20000193/1_1_1_18/_20000193-1_1_1_18+TAR.amr"

    const-string/jumbo v7, "{\"canSearch\":\"true\",\"launchParams\":{\"url\":\"/www/index.htm\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"showLoading\":\"NO\",\"waitRender\":\"100\",\"canPullDown\":\"NO\"},\"host\":{\"enable\":true,\"dev\":\"https://20000193.h5app.alipay.net\",\"test\":\"https://20000193.h5app.test.alipay.net\",\"online\":\"https://20000193.h5app.alipay.com\"}}"

    const-string/jumbo v8, "app_20000193"

    const-string/jumbo v9, "H5App"

    const-string/jumbo v10, "20000193-1_0_12_10+TAR.amr"

    const-string/jumbo v11, "1.1.1.18"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u6c47\u7387\u6362\u7b97"

    const-string/jumbo v2, "20000150"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{\"canSearch\":\"true\"}"

    const-string/jumbo v8, "app_20000150"

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.1.0"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u4f59\u989d\u5b9d"

    const-string/jumbo v2, "20000032"

    const-string/jumbo v4, "\u5929\u5f18\u3001\u5929\u5f18\u57fa\u91d1\u3001\u8d5a\u94b1\u3001\u7701\u94b1\u3001\u8d27\u5e01\u57fa\u91d1\u3001\u6d3b\u671f\u3001\u7406\u8d22\u3001\u6536\u76ca"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{\"canSearch\":\"true\"}"

    const-string/jumbo v8, "app_20000032"

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.2"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u4e5d\u6e38\u6e38\u620f"

    const-string/jumbo v2, "20000197"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{\"canSearch\":\"false\",\"launchParams\":{\"url\":\"http://ba.ugame.uc.cn/?ch=AL_3\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"backBehavior\":\"back\"}}"

    const-string/jumbo v8, "app_20000197"

    const-string/jumbo v9, "H5App"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.1"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u6e38\u620f\u5145\u503c"

    const-string/jumbo v2, "20000153"

    const-string/jumbo v4, ""

    const-string/jumbo v6, "http://tfs.alipayobjects.com/L1/71/10001/20000153/1_1_5_3/1440904120950_20000153-1_1_5_3+TAR.amr"

    const-string/jumbo v7, "{\"canSearch\":\"true\",\"launchParams\":{\"url\":\"/www/game/index.htm\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"showLoading\":\"NO\",\"_appId\":\"20000153\"},\"host\":{\"dev\":\"http://20000153.h5app.taobao.com\",\"test\":\"http://20000153.h5app.test.taobao.com\",\"online\":\"https://20000153.h5app.taobao.com\"}}"

    const-string/jumbo v8, "app_20000153"

    const-string/jumbo v9, "H5App"

    const-string/jumbo v10, "20000153-1_1_5_3+TAR.amr"

    const-string/jumbo v11, "1.1.5.3"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u4fe1\u7528\u5361\u8fd8\u6b3e"

    const-string/jumbo v2, "09999999"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{\"canSearch\":\"true\"}"

    const-string/jumbo v8, "app_09999999"

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.2"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u6d77\u5916\u4ea4\u901a\u5361"

    const-string/jumbo v2, "20000152"

    const-string/jumbo v4, ""

    const-string/jumbo v6, "http://tfs.alipayobjects.com/L1/71/10001/20000152/3_0_0_2/1438055401629_20000152-3_0_0_2+TAR.amr"

    const-string/jumbo v7, "{\"launchParams\":{\"url\":\"/www/prepaidcard/0.1.0/src/index.htm\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"showLoading\":\"NO\",\"readTitle\":\"NO\"},\"host\":{\"dev\":\"http://20000152.h5app.alipay.net\",\"test\":\"http://20000152.h5app.test.alipay.net\",\"online\":\"https://20000152.h5app.alipay.com\"}}"

    const-string/jumbo v8, "app_20000152"

    const-string/jumbo v9, "H5App"

    const-string/jumbo v10, "1438055401629_20000152-3_0_0_2 TAR.amr"

    const-string/jumbo v11, "3.0.0.2"

    move v5, v12

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "H5\u516c\u5171\u8d44\u6e90"

    const-string/jumbo v2, "20000196"

    const-string/jumbo v4, "H5\u516c\u5171\u8d44\u6e90"

    const-string/jumbo v6, "http://tfs.alipayobjects.com/L1/71/10001/20000196/1_0_12_2/_20000196-1_0_12_2+TAR.amr"

    const-string/jumbo v7, "{\"canSearch\":\"false\",\"launchParams\":{\"url\":\"/index.html\"}}"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "H5App"

    const-string/jumbo v10, "20000196-1_0_12_1+TAR.amr"

    const-string/jumbo v11, "1.0.12.2"

    move v5, v12

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u6d3b\u52a8\u7fa4"

    const-string/jumbo v2, "20000672"

    const-string/jumbo v4, "\u6237\u5916\u3001\u8fd0\u52a8\u3001KTV\uff0c\u9884\u6536\u8d39\u7528"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{\"canSearch\":\"false\",\"mainType\":\"0\",\"actionType\":\"form\",\"bizType\":\"5\",\"actionId\":\"general\",\"mode\":\"finish\"}"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.0"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u4e00\u8d77\u4e70\u5355"

    const-string/jumbo v2, "20000232"

    const-string/jumbo v4, "\u7fa4\u5185\u591a\u4eba\u901a\u8fc7\u4e8c\u7ef4\u7801\u4e00\u8d77\u4e70\u5355\uff0c\u5206\u522b\u6263\u6b3e\u7684\u5e94\u7528"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{\"canSearch\":\"false\",\"actionType\":\"payTogetherSelect\",\"bizType\":\"4\"}"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.0"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u56fd\u9645\u6c47\u6b3e"

    const-string/jumbo v2, "20000078"

    const-string/jumbo v4, ""

    const-string/jumbo v6, "http://tfs.alipayobjects.com/L1/71/10001/20000078/1_0_0_27/1437642009560_20000078-1_0_0_27+TAR.amr"

    const-string/jumbo v7, "{\"launchParams\":{\"url\":\"/www/remit/0.1.0/src/index.htm\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"backBehavior\":\"back\",\"showOptionMenu\":\"YES\"},\"host\":{\"dev\":\"http://20000078.h5app.alipay.net\",\"test\":\"http://20000078.h5app.test.alipay.net\",\"online\":\"https://20000078.h5app.alipay.com\"}}"

    const-string/jumbo v8, "app_20000078"

    const-string/jumbo v9, "H5App"

    const-string/jumbo v10, "1437642009560_20000078-1_0_0_27 TAR.amr"

    const-string/jumbo v11, "1.0.0.27"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u963f\u91cc\u65c5\u884c"

    const-string/jumbo v2, "20000155"

    const-string/jumbo v4, ""

    const-string/jumbo v6, "https://t.alipayobjects.com/L1/71/10001/20000155/0_2_99_0/1443508870102_20000155-0_2_99_0-publish+TAR.amr"

    const-string/jumbo v7, "{\"canSearch\":\"true\",\"launchParams\":{\"url\":\"/build_offline/pages/home/index.html?ttid=12zfb0000099\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"showLoading\":\"NO\",\"ttid\":\"12zfb0000099\"},\"host\":{\"dev\":\"http://20000155.h5app.waptest.taobao.com\",\"test\":\"http://20000155.h5app.waptest.taobao.com\",\"online\":\"http://20000155.h5app.m.taobao.com\",\"enable\":true}}"

    const-string/jumbo v8, "app_20000155"

    const-string/jumbo v9, "H5App"

    const-string/jumbo v10, "20000155-0_2_99_0-publish+TAR.amr"

    const-string/jumbo v11, "0.2.99.0"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u5a31\u4e50\u7fa4"

    const-string/jumbo v2, "20000671"

    const-string/jumbo v4, "\u6e38\u620f\u5a31\u4e50\uff0c\u5feb\u901f\u8f6c\u5e10"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{\"canSearch\":\"false\",\"mainType\":\"0\",\"bizType\":\"6\",\"actionType\":\"featurelotpay\"}"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.0"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u8bdd\u8d39\u5361\u8f6c\u8ba9"

    const-string/jumbo v2, "10000033"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{\"canSearch\":\"true\"}"

    const-string/jumbo v8, "app_10000033"

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.1"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u5173\u4e8e"

    const-string/jumbo v2, "10000110"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{\"canSearch\":\"true\"}"

    const-string/jumbo v8, "app_10000110"

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.1"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u7ea2\u5305"

    const-string/jumbo v2, "88886666"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{\"canSearch\":\"false\"}"

    const-string/jumbo v8, "app_88886666"

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.5"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u8d26\u6237\u5b89\u5168"

    const-string/jumbo v2, "20000070"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{\"canSearch\":\"true\"}"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.1"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u6536\u6b3e"

    const-string/jumbo v2, "20000674"

    const-string/jumbo v4, "\u666e\u901a1\u5bf91\u6536\u6b3e"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{\"canSearch\":\"false\",\"actionType\":\"personal\"}"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.0"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u56fd\u9645\u673a\u7968"

    const-string/jumbo v2, "20000157"

    const-string/jumbo v4, ""

    const-string/jumbo v6, "http://tfs.alipayobjects.com/L1/71/10001/20000157/4_21_0_0/1439811846393_20000157-4_21_0_0-publish+TAR.amr"

    const-string/jumbo v7, "{\"canSearch\":\"false\",\"launchParams\":{\"url\":\"/build_offline/pages/index.html?ttid=12zfb0000098\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"showLoading\":\"NO\",\"ttid\":\"12zfb0000098\"},\"host\":{\"dev\":\"http://20000157.h5app.waptest.taobao.com\",\"test\":\"http://20000157.h5app.waptest.taobao.com\",\"online\":\"http://20000157.h5app.m.taobao.com\",\"enable\":true}}"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "H5App"

    const-string/jumbo v10, "20000157-4_21_0_0-publish+TAR.amr"

    const-string/jumbo v11, "4.21.0.0"

    move v5, v12

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u7ecf\u8d39\u7fa4"

    const-string/jumbo v2, "20000673"

    const-string/jumbo v4, "\u73ed\u8d39\u3001\u4f1a\u5458\u8d39\uff0c\u7f34\u8d39\u624d\u53ef\u8fdb\u7fa4"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{\"canSearch\":\"false\",\"mainType\":\"1\",\"actionType\":\"Fund\"}"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.0"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u5728\u7ebf\u7406\u8d54"

    const-string/jumbo v2, "20000750"

    const-string/jumbo v4, ""

    const-string/jumbo v6, "http://tfs.alipayobjects.com/L1/71/10001/20000750/1_0_0_34/_20000750-1_0_0_34+TAR.amr"

    const-string/jumbo v7, "{\"launchParams\":{\"url\":\"/www/claimSchedule.htm\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"showLoading\":\"NO\",\"readTitle\":\"YES\",\"defaultTitle\":\"\u5728\u7ebf\u7406\u8d54\",\"showOptionMenu\":\"NO\"},\"host\":{\"enable\":true,\"dev\":\"http://zhx.h5app.alipay.net\",\"test\":\"https://zhx.h5app.test.alipay.net\",\"online\":\"https://zhx.h5app.alipay.com\"}}"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "H5App"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.34"

    move v5, v12

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u670d\u52a1\u7a97"

    const-string/jumbo v2, "80000002"

    const-string/jumbo v4, "\u5361\u5238\u548c\u65c5\u884c\u63a8\u8350\u670d\u52a1\u7a97\u5217\u8868"

    const-string/jumbo v6, "http://tfs.alipayobjects.com/L1/71/10001/80000002/1_0_1_7/1433918179736_80000002-1_0_1_7+TAR.amr"

    const-string/jumbo v7, "{\"canSearch\":\"false\",\"launchParams\":{\"url\":\"/www/pages/index.html\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"canPullDown\":\"NO\"},\"host\":{\"enable\":\"true\",\"dev\":\"http://80000002.h5app.alipay.net\",\"test\":\"http://80000002.h5app.test.alipay.net\",\"online\":\"https://80000002.h5app.alipay.com\"}}"

    const-string/jumbo v8, "app_80000002"

    const-string/jumbo v9, "H5App"

    const-string/jumbo v10, "80000002-1_0_1_7+TAR.amr"

    const-string/jumbo v11, "1.0.1.7"

    move v5, v12

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u9605\u540e\u5373\u711a"

    const-string/jumbo v2, "20000752"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    const-string/jumbo v8, ""

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.0"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u58f9\u57fa\u91d1\u6708\u6350"

    const-string/jumbo v2, "11000002"

    const-string/jumbo v4, "\u58f9\u57fa\u91d1\u6350\u6b3e\u662f \u6df1\u5733\u58f9\u57fa\u91d1\u516c\u76ca\u57fa\u91d1\u4f1a \u5021\u5bfc\u7684&amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;ldquo;\u6bcf\u4eba\u6bcf\u59291\u70b9\u7231&amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;rdquo;\u516c\u76ca\u4e92\u52a8\u6a21\u5f0f\uff0c\u5373&amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;ldquo;\u6bcf\u4eba\u6bcf\u59291\u5143\u94b1\uff0c\u6210\u5c31\u7231\u7684365\u5929&amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;rdquo;\u3002\u5584\u6b3e\u7528\u4e8e\u652f\u6301\u58f9\u57fa\u91d1\u6267\u884c\u7684\u707e\u5bb3\u6551\u52a9\u3001\u513f\u7ae5\u5173\u6000\u548c\u516c\u76ca\u4eba\u624d\u57f9\u517b\u4e09\u5927\u9886\u57df\u7684\u516c\u76ca\u9879\u76ee\u3002\u60a8\u53ef\u4ee5\u81ea\u884c\u51b3\u5b9a\u6bcf\u4e2a\u6708\u5b9a\u671f\u6350\u6b3e\u7684\u91d1\u989d\uff0c\u4e5f\u53ef\u4ee5\u968f\u65f6\u505c\u6b62\u4ed8\u6b3e\u3002"

    const-string/jumbo v6, "http://tfs.alipayobjects.com/L1/71/10001/11000002/5_2_1_8/1437557313029_11000002-5_2_1_8+TAR.amr"

    const-string/jumbo v7, "{\"launchParams\":{\"url\":\"/www/one.html\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"showLoading\":\"YES\"},\"host\":{\"dev\":\"http://11000002.h5app.alipay.net\",\"test\":\"http://11000002.h5app.test.alipay.net\",\"online\":\"https://11000002.h5app.alipay.com\"}}"

    const-string/jumbo v8, "app_11000002"

    const-string/jumbo v9, "H5App"

    const-string/jumbo v10, "11000002-5_2_1_8+TAR.amr"

    const-string/jumbo v11, "5.2.1.8"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u829d\u9ebb\u4fe1\u7528\u5206"

    const-string/jumbo v2, "20000118"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{\"searchExtra\":{\"target\":\"credit\"}}"

    const-string/jumbo v8, "app_20000118"

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.0"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u4f1a\u5458\u7279\u6743"

    const-string/jumbo v2, "20000160"

    const-string/jumbo v4, ""

    const-string/jumbo v6, "http://tfs.alipayobjects.com/L1/71/10001/20000160/0_4_8_3/_20000160-0_4_8_3+TAR.amr"

    const-string/jumbo v7, "{\"canSearch\":\"true\",\"nameForUserStage\":\"\u4f1a\u5458\u7279\u6743\",\"redPointWidgetId\":\"50000081\",\"launchParams\":{\"url\":\"/www/index.htm\",\"showTitleBar\":\"YES\",\"waitRender\":100,\"gestureBack\":\"NO\",\"defaultTitle\":\"\u6211\u7684\u7279\u6743\",\"readTitle\":\"YES\",\"showToolBar\":\"NO\",\"showProgress\":\"NO\",\"prefetchLocation\":\"YES\",\"canPullDown\":\"NO\"},\"host\":{\"enable\":\"true\",\"dev\":\"http://20000160.h5app.alipay.net\",\"test\":\"http://20000160.h5app.test.alipay.net\",\"online\":\"https://20000160.h5app.alipay.com\"}}"

    const-string/jumbo v8, "app_20000160"

    const-string/jumbo v9, "H5App"

    const-string/jumbo v10, "20000160-0_4_6_1+TAR.amr"

    const-string/jumbo v11, "0.4.8.3"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u7f8a\u57ce\u901a\u5145\u503c"

    const-string/jumbo v2, "20000162"

    const-string/jumbo v4, "\u7f8a\u57ce\u901a\u5145\u503c\u5e94\u7528\u662f\u652f\u4ed8\u5b9d\u94b1\u5305\u9762\u5411\u7f8a\u57ce\u901a\u5361\u7528\u6237\u63d0\u4f9b\u7684\u7f51\u4e0a\u4fbf\u6377\u5145\u503c\u8f6c\u8d26\u670d\u52a1\u3002\u7528\u6237\u5145\u503c\u8f6c\u8d26\u6210\u529f\u540e\uff0c\u9700\u6301\u5b9e\u4f53\u5361\u7247\u5728\u7f8a\u57ce\u901a\u7ebf\u4e0b\u670d\u52a1\u7f51\u70b9\u7684\u81ea\u52a8\u5145\u503c\u673a\u5177\u4e0a\u89e6\u78b0\u540e\u5c06\u5145\u503c\u91d1\u989d\u5b58\u5165\u5361\u5185\u3002"

    const-string/jumbo v6, "http://tfs.alipayobjects.com/L1/71/10001/20000162/1_0_2_4/1442977993447_20000162-1_0_2_4+TAR.amr"

    const-string/jumbo v7, "{\"canSearch\":\"false\",\"launchParams\":{\"url\":\"/www/index.html\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"showLoading\":\"NO\"},\"host\":{\"dev\":\"http://20000162.h5app.alipay.net\",\"test\":\"https://20000162.h5app.test.alipay.net\",\"online\":\"https://20000162.h5app.alipay.com\"}}"

    const-string/jumbo v8, "app_20000162"

    const-string/jumbo v9, "H5App"

    const-string/jumbo v10, "20000162-1_0_2_4+TAR.amr"

    const-string/jumbo v11, "1.0.2.4"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u7406\u8d22\u5c0f\u5de5\u5177"

    const-string/jumbo v2, "20000161"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{\"canSearch\":\"true\"}"

    const-string/jumbo v8, "app_20000161"

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.1"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u8f6c\u8d26"

    const-string/jumbo v2, "09999988"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{\"canSearch\":\"true\"}"

    const-string/jumbo v8, "app_09999988"

    const-string/jumbo v9, "nativeApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.2"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u53e3\u7891\u5916\u5356"

    const-string/jumbo v2, "20000120"

    const-string/jumbo v4, ""

    const-string/jumbo v6, "http://tfs.alipayobjects.com/L1/71/10001/20000120/3_9_8_22/_20000120-3_9_8_22+TAR.amr"

    const-string/jumbo v7, "{\"canSearch\":\"true\",\"launchParams\":{\"url\":\"/www/home.htm?ttid=12huo0000030\",\"showTitleBar\":\"YES\",\"ssoLoginEnabled\":\"YES\",\"safePayEnabled\":\"YES\",\"showToolBar\":\"NO\",\"pullRefresh\":\"YES\",\"offlineH5SsoLoginFirst\":\"YES\",\"ttid\":\"12huo0000030\"},\"host\":{\"enable\":true,\"dev\":\"http://dd.waptest.taobao.com\",\"test\":\"http://dd.waptest.taobao.com\",\"online\":\"http://20000120.h5app.m.taobao.com\"}}"

    const-string/jumbo v8, "app_20000120"

    const-string/jumbo v9, "H5App"

    const-string/jumbo v10, "_20000120-3_9_8_22+TAR.amr"

    const-string/jumbo v11, "3.9.8.22"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u8682\u8681\u4e50\u9a7e"

    const-string/jumbo v2, "20000241"

    const-string/jumbo v4, ""

    const-string/jumbo v6, "http://tfs.alipayobjects.com/L1/71/10001/20000241/1_0_3_11/_20000241-1_0_3_11+TAR.amr"

    const-string/jumbo v7, "{\"canSearch\":\"false\",\"launchParams\":{\"url\":\"/www/index.html\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"showLoading\":\"NO\",\"readTitle\":\"NO\",\"defaultTitle\":\"\u8682\u8681\u4e50\u9a7e\",\"showOptionMenu\":\"NO\",\"canPullDown\":\"NO\",\"backBehavior\":\"pop\",\"waitRender\":300},\"host\":{\"enable\":true,\"dev\":\"http://20000241.h5app.alipay.net\",\"test\":\"http://20000241.h5app.test.alipay.net\",\"pre\":\"http://20000241.h5app.pre.alipay.net\",\"online\":\"https://20000241.h5app.alipay.com\"}}"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "H5App"

    const-string/jumbo v10, "20000241-1_0_1_9+TAR.amr"

    const-string/jumbo v11, "1.0.3.11"

    move v5, v12

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u5929\u732b"

    const-string/jumbo v2, "20000000"

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{\"canSearch\":\"true\",\"launchParams\":{\"url\":\"https://www.tmall.com/?force=m&from=alipay1\",\"backBehavior\":\"back\",\"showTitleBar\":\"YES\",\"smartToolBar\":\"NO\",\"showToolBar\":\"NO\"}}"

    const-string/jumbo v8, "app_20000000"

    const-string/jumbo v9, "H5App"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.0.0.1"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u57ce\u5e02\u4e00\u5361\u901a"

    const-string/jumbo v2, "20000088"

    const-string/jumbo v4, "\u57ce\u5e02\u4e00\u5361\u901a\u4ea7\u54c1\u662f\u652f\u4ed8\u5b9d\u201c\u672a\u6765\u516c\u4ea4\u201d\u7684\u4e00\u90e8\u5206\uff0c\u5411\u7528\u6237\u63d0\u4f9b\u57ce\u5e02\u53d1\u884c\u7684\u5b9e\u4f53\u516c\u4ea4\u5361\u4fbf\u6377\u5145\u503c\uff0c\u4ee5\u53ca\u624b\u673a\u516c\u4ea4\u5361\u7684\u53d1\u5361\u3001\u5145\u503c\u548c\u6d88\u8d39\u670d\u52a1\uff0c\u65b9\u4fbf\u767e\u59d3\u51fa\u884c\u3002\u9996\u671f\u4ea7\u54c1\u5411\u7528\u6237\u5f00\u653e\u53f0\u5dde\u3001\u9752\u5c9b\u3001\u53a6\u95e8\u3001\u5357\u660c\u3001\u5b81\u6ce2\u3001\u7ecd\u5174\u3001\u5609\u51747\u4e2a\u57ce\u5e02\u53d1\u884c\u7684\u516c\u4ea4\u5361\u5145\u503c\u670d\u52a1\uff0c\u66f4\u591a\u652f\u6301\u57ce\u5e02\u548c\u66f4\u591a\u529f\u80fd\u656c\u8bf7\u671f\u5f85\u3002"

    const-string/jumbo v6, "https://t.alipayobjects.com/L1/71/10001/20000088/1_3_3_1509251602/_citycard-build-1.3.3.1509251602.20151015-nolog.jar"

    const-string/jumbo v7, ""

    const-string/jumbo v8, "app_20000088"

    const-string/jumbo v9, "innerApp"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "1.3.3.1509251602"

    move v5, v3

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$Entity;->sEntitys:Ljava/util/List;

    const-string/jumbo v1, "\u62db\u8d22\u5b9d"

    const-string/jumbo v2, "20000165"

    const-string/jumbo v4, ""

    const-string/jumbo v6, "http://tfs.alipayobjects.com/L1/71/10001/20000165/2_0_10_11/_20000165-2_0_10_11+TAR.amr"

    const-string/jumbo v7, "{\"canSearch\":\"true\",\"launchParams\":{\"url\":\"/www/index.htm\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"showLoading\":\"NO\",\"readTitle\":\"YES\",\"defaultTitle\":\"\u62db\u8d22\u5b9d\",\"showOptionMenu\":\"NO\"},\"host\":{\"enable\":true,\"dev\":\"http://zhaocaibao.h5app.alipay.net\",\"test\":\"https://zhaocaibao.h5app.test.alipay.net\",\"online\":\"https://zhaocaibao.h5app.alipay.com\"}}"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "H5App"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "2.0.10.11"

    move v5, v12

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addEntity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
