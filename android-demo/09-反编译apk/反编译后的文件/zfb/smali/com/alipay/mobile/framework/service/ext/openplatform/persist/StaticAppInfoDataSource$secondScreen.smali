.class public Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$secondScreen;
.super Ljava/lang/Object;
.source "StaticAppInfoDataSource.java"


# static fields
.field public static _secondScreen:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 117
    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$secondScreen;->_secondScreen:Ljava/util/List;

    const-string/jumbo v1, "10000011"

    const-string/jumbo v4, "app_10000011"

    const-string/jumbo v5, "\u5f69\u7968"

    const-string/jumbo v6, "{\"launchParams\":{\"enableFallback\":false,\"url\":\"/www/lottery/index.html\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"showLoading\":\"NO\"},\"host\":{\"dev\":\"http://caipiao.waptest.taobao.net\",\"test\":\"http://caipiao.wapa.taobao.com\",\"online\":\"http://caipiao.m.taobao.com\"}}"

    const-string/jumbo v7, "{}"

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    sget-object v4, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$secondScreen;->_secondScreen:Ljava/util/List;

    const-string/jumbo v5, "10000008"

    const-string/jumbo v8, "app_10000008"

    const-string/jumbo v9, "\u624b\u673a\u5b9d\u4ee4"

    const-string/jumbo v10, "{\"canSearch\":\"false\"}"

    const-string/jumbo v11, "{}"

    move v6, v2

    move v7, v2

    invoke-static/range {v4 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    sget-object v4, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$secondScreen;->_secondScreen:Ljava/util/List;

    const-string/jumbo v5, "10000033"

    const-string/jumbo v8, "app_10000033"

    const-string/jumbo v9, "\u8bdd\u8d39\u5361\u8f6c\u8ba9"

    const-string/jumbo v10, "{\"canSearch\":\"true\"}"

    const-string/jumbo v11, "{}"

    move v6, v2

    move v7, v2

    invoke-static/range {v4 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    sget-object v4, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$secondScreen;->_secondScreen:Ljava/util/List;

    const-string/jumbo v5, "20000197"

    const-string/jumbo v8, "app_20000197"

    const-string/jumbo v9, "\u4e5d\u6e38\u6e38\u620f"

    const-string/jumbo v10, "{\"canSearch\":\"false\",\"launchParams\":{\"url\":\"http://ba.ugame.uc.cn/?ch=AL_3\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"backBehavior\":\"back\"}}"

    const-string/jumbo v11, "{}"

    move v6, v2

    move v7, v2

    invoke-static/range {v4 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    sget-object v4, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$secondScreen;->_secondScreen:Ljava/util/List;

    const-string/jumbo v5, "11000002"

    const-string/jumbo v8, "app_11000002"

    const-string/jumbo v9, "\u58f9\u57fa\u91d1\u6708\u6350"

    const-string/jumbo v10, "{\"launchParams\":{\"url\":\"/www/one.html\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"showLoading\":\"YES\"},\"host\":{\"dev\":\"http://11000002.h5app.alipay.net\",\"test\":\"http://11000002.h5app.test.alipay.net\",\"online\":\"https://11000002.h5app.alipay.com\"}}"

    const-string/jumbo v11, "{}"

    move v6, v2

    move v7, v2

    invoke-static/range {v4 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    sget-object v4, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$secondScreen;->_secondScreen:Ljava/util/List;

    const-string/jumbo v5, "10000114"

    const-string/jumbo v8, "app_10000114"

    const-string/jumbo v9, "\u88c5\u673a\u5fc5\u5907"

    const-string/jumbo v10, "{\"launchParams\":{\"url\":\"https://ds.alipay.com/zjbb/zjbb.htm\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"canPullDown\":\"NO\"}}"

    const-string/jumbo v11, "{}"

    move v6, v2

    move v7, v2

    invoke-static/range {v4 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    sget-object v4, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$secondScreen;->_secondScreen:Ljava/util/List;

    const-string/jumbo v5, "20000078"

    const-string/jumbo v8, "app_20000078"

    const-string/jumbo v9, "\u56fd\u9645\u6c47\u6b3e"

    const-string/jumbo v10, "{\"launchParams\":{\"url\":\"/www/remit/0.1.0/src/index.htm\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"backBehavior\":\"back\",\"showOptionMenu\":\"YES\"},\"host\":{\"dev\":\"http://20000078.h5app.alipay.net\",\"test\":\"http://20000078.h5app.test.alipay.net\",\"online\":\"https://20000078.h5app.alipay.com\"}}"

    const-string/jumbo v11, "{}"

    move v6, v2

    move v7, v2

    invoke-static/range {v4 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    sget-object v4, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$secondScreen;->_secondScreen:Ljava/util/List;

    const-string/jumbo v5, "20000162"

    const-string/jumbo v8, "app_20000162"

    const-string/jumbo v9, "\u7f8a\u57ce\u901a\u5145\u503c"

    const-string/jumbo v10, "{\"canSearch\":\"false\",\"launchParams\":{\"url\":\"/www/index.html\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"showLoading\":\"NO\"},\"host\":{\"dev\":\"http://20000162.h5app.alipay.net\",\"test\":\"https://20000162.h5app.test.alipay.net\",\"online\":\"https://20000162.h5app.alipay.com\"}}"

    const-string/jumbo v11, "{}"

    move v6, v2

    move v7, v2

    invoke-static/range {v4 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    sget-object v4, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$secondScreen;->_secondScreen:Ljava/util/List;

    const-string/jumbo v5, "2014021200003129"

    const-string/jumbo v8, "app_2014021200003129"

    const-string/jumbo v9, "\u6559\u80b2\u7f34\u8d39"

    const-string/jumbo v10, "{\"canSearch\":\"true\",\"launchParams\":{\"url\":\"/www/edu/index.html\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"showLoading\":\"NO\",\"_appId\":\"2014021200003129\"},\"host\":{\"dev\":\"http://2014021200003129.h5app.alipay.net\",\"test\":\"http://2014021200003129.h5app.test.alipay.net\",\"online\":\"https://2014021200003129.h5app.alipay.com\"}}"

    const-string/jumbo v11, "{}"

    move v6, v2

    move v7, v2

    invoke-static/range {v4 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    sget-object v4, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$secondScreen;->_secondScreen:Ljava/util/List;

    const-string/jumbo v5, "20000690"

    const-string/jumbo v8, "app_20000690"

    const-string/jumbo v9, "\u8d26\u53f7\u4f30\u503c"

    const-string/jumbo v10, "{\"canSearch\":\"false\",\"launchParams\": {\"url\": \"http://huodong.m.taobao.com/topic/alipaySudoku/index.html\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"showLoading\":\"NO\",\"pullRefresh\":\"YES\",\"ssoLoginEnabled\":\"YES\"}}"

    const-string/jumbo v11, "{}"

    move v6, v2

    move v7, v2

    invoke-static/range {v4 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    sget-object v4, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$secondScreen;->_secondScreen:Ljava/util/List;

    const-string/jumbo v5, "20000152"

    const-string/jumbo v8, "app_20000152"

    const-string/jumbo v9, "\u6d77\u5916\u4ea4\u901a\u5361"

    const-string/jumbo v10, "{\"launchParams\":{\"url\":\"/www/prepaidcard/0.1.0/src/index.htm\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"showLoading\":\"NO\",\"readTitle\":\"NO\"},\"host\":{\"dev\":\"http://20000152.h5app.alipay.net\",\"test\":\"http://20000152.h5app.test.alipay.net\",\"online\":\"https://20000152.h5app.alipay.com\"}}"

    const-string/jumbo v11, "{}"

    move v6, v3

    move v7, v2

    invoke-static/range {v4 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    sget-object v4, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$secondScreen;->_secondScreen:Ljava/util/List;

    const-string/jumbo v5, "20000101"

    const-string/jumbo v8, "app_20000101"

    const-string/jumbo v9, "\u670d\u52a1\u7a97"

    const-string/jumbo v10, "{\"canSearch\":\"true\"}"

    const-string/jumbo v11, "{}"

    move v6, v2

    move v7, v2

    invoke-static/range {v4 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    sget-object v4, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$secondScreen;->_secondScreen:Ljava/util/List;

    const-string/jumbo v5, "20000193"

    const-string/jumbo v8, "app_20000193"

    const-string/jumbo v9, "\u751f\u6d3b\u7f34\u8d39"

    const-string/jumbo v10, "{\"canSearch\":\"true\",\"launchParams\":{\"url\":\"/www/index.htm\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"showLoading\":\"NO\",\"waitRender\":\"100\",\"canPullDown\":\"NO\"},\"host\":{\"enable\":true,\"dev\":\"https://20000193.h5app.alipay.net\",\"test\":\"https://20000193.h5app.test.alipay.net\",\"online\":\"https://20000193.h5app.alipay.com\"}}"

    const-string/jumbo v11, "{}"

    move v6, v2

    move v7, v2

    invoke-static/range {v4 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    sget-object v4, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$secondScreen;->_secondScreen:Ljava/util/List;

    const-string/jumbo v5, "20000139"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "\u9152\u5e97"

    const-string/jumbo v10, "{\"launchParams\":{\"url\":\"/build_offline/pages/search/index.html\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"showLoading\":\"NO\",\"ttid\":\"\"},\"host\":{\"dev\":\"http://20000139.h5app.waptest.taobao.com\",\"test\":\"http://20000139.h5app.waptest.taobao.com\",\"online\":\"http://20000139.h5app.m.taobao.com\",\"enable\":true},\"canSearch\":true}"

    const-string/jumbo v11, "{}"

    move v6, v3

    move v7, v2

    invoke-static/range {v4 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    sget-object v4, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$secondScreen;->_secondScreen:Ljava/util/List;

    const-string/jumbo v5, "20000153"

    const-string/jumbo v8, "app_20000153"

    const-string/jumbo v9, "\u6e38\u620f\u5145\u503c"

    const-string/jumbo v10, "{\"canSearch\":\"true\",\"launchParams\":{\"url\":\"/www/game/index.htm\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"showLoading\":\"NO\",\"_appId\":\"20000153\"},\"host\":{\"dev\":\"http://20000153.h5app.taobao.com\",\"test\":\"http://20000153.h5app.test.taobao.com\",\"online\":\"https://20000153.h5app.taobao.com\"}}"

    const-string/jumbo v11, "{}"

    move v6, v2

    move v7, v2

    invoke-static/range {v4 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    sget-object v4, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$secondScreen;->_secondScreen:Ljava/util/List;

    const-string/jumbo v5, "20000155"

    const-string/jumbo v8, "app_20000155"

    const-string/jumbo v9, "\u963f\u91cc\u65c5\u884c"

    const-string/jumbo v10, "{\"canSearch\":\"true\",\"launchParams\":{\"url\":\"/build_offline/pages/home/index.html?ttid=12zfb0000099\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"showLoading\":\"NO\",\"ttid\":\"12zfb0000099\"},\"host\":{\"dev\":\"http://20000155.h5app.waptest.taobao.com\",\"test\":\"http://20000155.h5app.waptest.taobao.com\",\"online\":\"http://20000155.h5app.m.taobao.com\",\"enable\":true}}"

    const-string/jumbo v11, "{}"

    move v6, v2

    move v7, v2

    invoke-static/range {v4 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    sget-object v4, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$secondScreen;->_secondScreen:Ljava/util/List;

    const-string/jumbo v5, "10000009"

    const-string/jumbo v8, "app_10000009"

    const-string/jumbo v9, "\u7231\u5fc3\u6350\u8d60"

    const-string/jumbo v10, "{\"canSearch\":\"true\",\"launchParams\":{\"url\":\"/www/my.htm\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"showLoading\":\"NO\",\"canPullDown\":\"NO\",\"waitRender\":\"300\"},\"host\":{\"dev\":\"http://10000009.h5app.alipay.net\",\"test\":\"http://10000009.h5app.test.alipay.net\",\"online\":\"https://10000009.h5app.alipay.com\"}}"

    const-string/jumbo v11, "{}"

    move v6, v2

    move v7, v2

    invoke-static/range {v4 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    sget-object v4, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$secondScreen;->_secondScreen:Ljava/util/List;

    const-string/jumbo v5, "20000134"

    const-string/jumbo v8, "app_20000134"

    const-string/jumbo v9, "\u80a1\u7968"

    const-string/jumbo v10, "{\"canSearch\":\"true\"}"

    const-string/jumbo v11, "{}"

    move v6, v2

    move v7, v2

    invoke-static/range {v4 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    sget-object v4, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$secondScreen;->_secondScreen:Ljava/util/List;

    const-string/jumbo v5, "20000196"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "H5\u516c\u5171\u8d44\u6e90"

    const-string/jumbo v10, "{\"canSearch\":\"false\",\"launchParams\":{\"url\":\"/index.html\"}}"

    const-string/jumbo v11, "{}"

    move v6, v3

    move v7, v2

    invoke-static/range {v4 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    sget-object v4, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$secondScreen;->_secondScreen:Ljava/util/List;

    const-string/jumbo v5, "09999999"

    const-string/jumbo v8, "app_09999999"

    const-string/jumbo v9, "\u4fe1\u7528\u5361\u8fd8\u6b3e"

    const-string/jumbo v10, "{\"canSearch\":\"true\"}"

    const-string/jumbo v11, "{}"

    move v6, v2

    move v7, v2

    invoke-static/range {v4 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    sget-object v4, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$secondScreen;->_secondScreen:Ljava/util/List;

    const-string/jumbo v5, "20000205"

    const-string/jumbo v8, "app_20000205"

    const-string/jumbo v9, "\u4eb2\u60c5\u8d26\u6237"

    const-string/jumbo v10, "{\"canSearch\":\"true\"}"

    const-string/jumbo v11, "{}"

    move v6, v2

    move v7, v2

    invoke-static/range {v4 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    sget-object v4, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$secondScreen;->_secondScreen:Ljava/util/List;

    const-string/jumbo v5, "20000697"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "\u53bb\u554a\u5468\u8fb9\u6e38"

    const-string/jumbo v10, "{\"canSearch\":\"false\",\"launchParams\": {\"url\": \"/build_offline/pages/search/index.html\",\"showTitleBar\": \"YES\",\"showToolBar\": \"NO\",\"showLoading\": \"NO\",\"ttid\": \"12zfb0000157\"},\"host\": {\"dev\": \"http://20000697.h5app.waptest.taobao.com\",\"test\": \"http://20000697.h5app.waptest.taobao.com\",\"online\": \"http://20000697.h5app.m.taobao.com\",\"enable\": true}}"

    const-string/jumbo v11, "{}"

    move v6, v3

    move v7, v2

    invoke-static/range {v4 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    sget-object v4, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$secondScreen;->_secondScreen:Ljava/util/List;

    const-string/jumbo v5, "20000088"

    const-string/jumbo v8, "app_20000088"

    const-string/jumbo v9, "\u57ce\u5e02\u4e00\u5361\u901a"

    const-string/jumbo v10, ""

    const-string/jumbo v11, "{}"

    move v6, v2

    move v7, v2

    invoke-static/range {v4 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    sget-object v4, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$secondScreen;->_secondScreen:Ljava/util/List;

    const-string/jumbo v5, "20000157"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "\u56fd\u9645\u673a\u7968"

    const-string/jumbo v10, "{\"canSearch\":\"false\",\"launchParams\":{\"url\":\"/build_offline/pages/index.html?ttid=12zfb0000098\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"showLoading\":\"NO\",\"ttid\":\"12zfb0000098\"},\"host\":{\"dev\":\"http://20000157.h5app.waptest.taobao.com\",\"test\":\"http://20000157.h5app.waptest.taobao.com\",\"online\":\"http://20000157.h5app.m.taobao.com\",\"enable\":true}}"

    const-string/jumbo v11, "{}"

    move v6, v3

    move v7, v2

    invoke-static/range {v4 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    sget-object v4, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$secondScreen;->_secondScreen:Ljava/util/List;

    const-string/jumbo v5, "20000165"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "\u62db\u8d22\u5b9d"

    const-string/jumbo v10, "{\"canSearch\":\"true\",\"launchParams\":{\"url\":\"/www/index.htm\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"showLoading\":\"NO\",\"readTitle\":\"YES\",\"defaultTitle\":\"\u62db\u8d22\u5b9d\",\"showOptionMenu\":\"NO\"},\"host\":{\"enable\":true,\"dev\":\"http://zhaocaibao.h5app.alipay.net\",\"test\":\"https://zhaocaibao.h5app.test.alipay.net\",\"online\":\"https://zhaocaibao.h5app.alipay.com\"}}"

    const-string/jumbo v11, "{}"

    move v6, v3

    move v7, v2

    invoke-static/range {v4 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    sget-object v4, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$secondScreen;->_secondScreen:Ljava/util/List;

    const-string/jumbo v5, "20000735"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "\u8682\u8681\u5fae\u670d"

    const-string/jumbo v10, "{\"canSearch\":\"false\",\"launchParams\":{\"url\":\"/www/index.html\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"showLoading\":\"NO\",\"defaultTitle\":\"\u8682\u8681\u5fae\u670d\",\"showOptionMenu\":\"NO\",\"canPullDown\":\"NO\",\"prefetchLocation\":\"YES\"},\"host\":{\"enable\":true,\"dev\":\"http://socialportal.h5app.alipay.net\",\"test\":\"http://socialportal.h5app.alipay.net\",\"online\":\"https://socialportal.h5app.alipay.com\"}}"

    const-string/jumbo v11, "{}"

    move v6, v3

    move v7, v2

    invoke-static/range {v4 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    sget-object v4, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$secondScreen;->_secondScreen:Ljava/util/List;

    const-string/jumbo v5, "20000109"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "\u6d77\u5916\u76f4\u8d2d"

    const-string/jumbo v10, "{\"launchParams\":{\"url\":\"/www/oatpexprod/0.1.0/src/orderDetail.htm\",\"showTitleBar\":\"YES\",\"readTitle\":\"YES\",\"defaultTitle\":\"\",\"showToolBar\":\"NO\",\"showLoading\":\"YES\"},\"host\":{\"dev\":\"http://20000109.h5app.alipay.net\",\"test\":\"http://20000109.h5app.test.alipay.net\",\"online\":\"https://20000109.h5app.alipay.com\"}}"

    const-string/jumbo v11, "{}"

    move v6, v3

    move v7, v2

    invoke-static/range {v4 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    sget-object v4, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$secondScreen;->_secondScreen:Ljava/util/List;

    const-string/jumbo v5, "20000218"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "\u5b58\u91d1\u5b9d"

    const-string/jumbo v10, "{\"canSearch\":\"false\",\"launchParams\":{\"url\":\"/www/index.htm\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"showLoading\":\"NO\",\"readTitle\":\"NO\",\"defaultTitle\":\"\u5b58\u91d1\u5b9d\",\"showOptionMenu\":\"NO\"},\"host\":{\"dev\":\"http://goldetfprod.h5app.alipay.net\",\"test\":\"https://goldetfprod.h5app.test.alipay.net\",\"online\":\"https://goldetfprod.h5app.alipay.com\"}}"

    const-string/jumbo v11, "{}"

    move v6, v3

    move v7, v2

    invoke-static/range {v4 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    sget-object v4, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$secondScreen;->_secondScreen:Ljava/util/List;

    const-string/jumbo v5, "20000143"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "\u706b\u8f66\u7968"

    const-string/jumbo v10, "{\"canSearch\":\"false\",\"launchParams\":{\"url\":\"/build_offline/pages/search/index.html\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"showLoading\":\"NO\",\"ttid\":\"12zfb0000099\"},\"host\":{\"dev\":\"http://20000143.h5app.waptest.taobao.com\",\"test\":\"http://20000143.h5app.waptest.taobao.com\",\"online\":\"http://20000143.h5app.m.taobao.com\",\"enable\":true}}"

    const-string/jumbo v11, "{}"

    move v6, v3

    move v7, v2

    invoke-static/range {v4 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    sget-object v4, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$secondScreen;->_secondScreen:Ljava/util/List;

    const-string/jumbo v5, "20000142"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "\u5a31\u4e50\u5b9d"

    const-string/jumbo v10, "{\"launchParams\":{\"url\":\"/build/page/home.html\",\"pullRefresh\": \"YES\"},\"host\":{\"enable\":true,\"dev\":\"http://20000142.h5app.alipay.net\",\"test\": \"http://20000142.h5app.test.alipay.net\",\"online\":\"https://20000142.h5app.alipay.com\"}}"

    const-string/jumbo v11, "{}"

    move v6, v3

    move v7, v2

    invoke-static/range {v4 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    sget-object v4, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$secondScreen;->_secondScreen:Ljava/util/List;

    const-string/jumbo v5, "20000146"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "\u6211\u7684\u5feb\u9012\uff08\u6dd8\u5b9d\uff09"

    const-string/jumbo v10, "{\"canSearch\":\"false\",\"launchParams\":{\"url\":\"/www/home/index.html\",\"showTitleBar\":\"YES\",\"offlineH5SsoLoginFirst\":\"YES\",\"showToolBar\":\"NO\",\"showLoading\":\"NO\"},\"host\":{\"enable\":true,\"dev\":\"http://20000146.h5app.waptest.taobao.net\",\"test\":\"http://20000146.h5app.waptest.taobao.net\",\"online\":\"http://20000146.h5app.m.taobao.com\"}}"

    const-string/jumbo v11, "{}"

    move v6, v3

    move v7, v2

    invoke-static/range {v4 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    sget-object v4, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$secondScreen;->_secondScreen:Ljava/util/List;

    const-string/jumbo v5, "20000241"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "\u8682\u8681\u4e50\u9a7e"

    const-string/jumbo v10, "{\"canSearch\":\"false\",\"launchParams\":{\"url\":\"/www/index.html\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"showLoading\":\"NO\",\"readTitle\":\"NO\",\"defaultTitle\":\"\u8682\u8681\u4e50\u9a7e\",\"showOptionMenu\":\"NO\",\"canPullDown\":\"NO\",\"backBehavior\":\"pop\",\"waitRender\":300},\"host\":{\"enable\":true,\"dev\":\"http://20000241.h5app.alipay.net\",\"test\":\"http://20000241.h5app.test.alipay.net\",\"pre\":\"http://20000241.h5app.pre.alipay.net\",\"online\":\"https://20000241.h5app.alipay.com\"}}"

    const-string/jumbo v11, "{}"

    move v6, v3

    move v7, v2

    invoke-static/range {v4 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    sget-object v4, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$secondScreen;->_secondScreen:Ljava/util/List;

    const-string/jumbo v5, "20000258"

    const-string/jumbo v8, "app_20000258"

    const-string/jumbo v9, "AA\u6536\u6b3e"

    const-string/jumbo v10, "{\"actionType\":\"form\",\"actionId\":\"aa\",\"sourceId\":\"launcher\",\"searchExtra\":\"{\'actionType\':\'form\',\'actionId\':\'aa\',\'sourceId\':\'launcher\'}\",\"canSearch\":\"true\"}"

    const-string/jumbo v11, "{}"

    move v6, v2

    move v7, v2

    invoke-static/range {v4 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    sget-object v4, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$secondScreen;->_secondScreen:Ljava/util/List;

    const-string/jumbo v5, "20000750"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "\u5728\u7ebf\u7406\u8d54"

    const-string/jumbo v10, "{\"launchParams\":{\"url\":\"/www/claimSchedule.htm\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"showLoading\":\"NO\",\"readTitle\":\"YES\",\"defaultTitle\":\"\u5728\u7ebf\u7406\u8d54\",\"showOptionMenu\":\"NO\"},\"host\":{\"enable\":true,\"dev\":\"http://zhx.h5app.alipay.net\",\"test\":\"https://zhx.h5app.test.alipay.net\",\"online\":\"https://zhx.h5app.alipay.com\"}}"

    const-string/jumbo v11, "{}"

    move v6, v3

    move v7, v2

    invoke-static/range {v4 .. v11}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
