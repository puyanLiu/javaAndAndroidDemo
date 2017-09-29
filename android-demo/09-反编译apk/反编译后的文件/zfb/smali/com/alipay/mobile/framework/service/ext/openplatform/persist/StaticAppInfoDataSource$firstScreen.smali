.class public Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$firstScreen;
.super Ljava/lang/Object;
.source "StaticAppInfoDataSource.java"


# static fields
.field public static _firstScreen:Ljava/util/List;
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
    .locals 11

    .prologue
    const/4 v2, 0x1

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$firstScreen;->_firstScreen:Ljava/util/List;

    const-string/jumbo v1, "09999988"

    const-string/jumbo v4, "app_09999988"

    const-string/jumbo v5, "\u8f6c\u8d26"

    const-string/jumbo v6, "{\"canSearch\":\"true\"}"

    const-string/jumbo v7, "{}"

    move v3, v2

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$firstScreen;->_firstScreen:Ljava/util/List;

    const-string/jumbo v1, "10000003"

    const-string/jumbo v4, "app_10000003"

    const-string/jumbo v5, "\u624b\u673a\u5145\u503c"

    const-string/jumbo v6, "{\"canSearch\":\"true\"}"

    const-string/jumbo v7, "{}"

    move v3, v2

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$firstScreen;->_firstScreen:Ljava/util/List;

    const-string/jumbo v1, "20000131"

    const-string/jumbo v4, "app_20000131"

    const-string/jumbo v5, "\u6dd8\u5b9d\u7535\u5f71"

    const-string/jumbo v6, "{\"canSearch\":\"true\"}"

    const-string/jumbo v7, "{}"

    move v3, v2

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$firstScreen;->_firstScreen:Ljava/util/List;

    const-string/jumbo v1, "2013062600000474"

    const-string/jumbo v4, "app_2013062600000474"

    const-string/jumbo v5, "\u6821\u56ed\u4e00\u5361\u901a"

    const-string/jumbo v6, "{\"canSearch\":\"true\"}"

    const-string/jumbo v7, "{}"

    move v3, v2

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$firstScreen;->_firstScreen:Ljava/util/List;

    const-string/jumbo v1, "88886666"

    const-string/jumbo v4, "app_88886666"

    const-string/jumbo v5, "\u7ea2\u5305"

    const-string/jumbo v6, "{\"canSearch\":\"false\"}"

    const-string/jumbo v7, "{}"

    move v3, v2

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$firstScreen;->_firstScreen:Ljava/util/List;

    const-string/jumbo v1, "20000135"

    const-string/jumbo v4, "app_20000135"

    const-string/jumbo v5, "\u673a\u7968\u706b\u8f66\u7968"

    const-string/jumbo v6, "{\"launchParams\":{\"url\":\"/build_offline/pages/search/index.html?ttid=12zfb0000098\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"showLoading\":\"NO\",\"ttid\":\"12zfb0000098\",\"backBehavior\":\"back\"},\"host\":{\"dev\":\"http://20000135.h5app.waptest.taobao.com\",\"test\":\"http://20000135.h5app.waptest.taobao.com\",\"online\":\"http://20000135.h5app.m.taobao.com\",\"enable\":true}}"

    const-string/jumbo v7, "{}"

    move v3, v2

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$firstScreen;->_firstScreen:Ljava/util/List;

    const-string/jumbo v1, "20000168"

    const-string/jumbo v4, "app_20000168"

    const-string/jumbo v5, "\u8bb0\u8d26\u672c"

    const-string/jumbo v6, "{\"canSearch\":\"true\"}"

    const-string/jumbo v7, "{}"

    move v3, v2

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$firstScreen;->_firstScreen:Ljava/util/List;

    const-string/jumbo v1, "20000120"

    const-string/jumbo v4, "app_20000120"

    const-string/jumbo v5, "\u53e3\u7891\u5916\u5356"

    const-string/jumbo v6, "{\"canSearch\":\"true\",\"launchParams\":{\"url\":\"/www/home.htm?ttid=12huo0000030\",\"showTitleBar\":\"YES\",\"ssoLoginEnabled\":\"YES\",\"safePayEnabled\":\"YES\",\"showToolBar\":\"NO\",\"pullRefresh\":\"YES\",\"offlineH5SsoLoginFirst\":\"YES\",\"ttid\":\"12huo0000030\"},\"host\":{\"enable\":true,\"dev\":\"http://dd.waptest.taobao.com\",\"test\":\"http://dd.waptest.taobao.com\",\"online\":\"http://20000120.h5app.m.taobao.com\"}}"

    const-string/jumbo v7, "{}"

    move v3, v2

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$firstScreen;->_firstScreen:Ljava/util/List;

    const-string/jumbo v1, "20000161"

    const-string/jumbo v4, "app_20000161"

    const-string/jumbo v5, "\u7406\u8d22\u5c0f\u5de5\u5177"

    const-string/jumbo v6, "{\"canSearch\":\"true\"}"

    const-string/jumbo v7, "{}"

    move v3, v2

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$firstScreen;->_firstScreen:Ljava/util/List;

    const-string/jumbo v1, "20000130"

    const-string/jumbo v4, "app_20000130"

    const-string/jumbo v5, "\u5feb\u7684\u6253\u8f66"

    const-string/jumbo v6, "{\"canSearch\":\"false\",\"launchParams\":{\"url\":\"/www/index.html\", \"showTitleBar\": \"YES\",\"showToolBar\": \"NO\",\"showLoading\":\"NO\",\"canPullDown\": \"NO\",\"safePayEnabled\":\"YES\",\"readTitle\":\"YES\",\"closeAfterPayFinish\":\"NO\",\"closeAfterPay\":\"NO\",\"defaultTitle\":\"\u6ef4\u6ef4\u51fa\u884c\",\"ca\":\"NO\",\"backBehavior\":\"back\"},\"host\":{\"enable\":\"true\",\"dev\":\"http://20000130.h5app.alipay.net\",\"test\":\"http://20000130.h5app.test.alipay.net\",\"online\":\"https://20000130.h5app.alipay.com\"}}"

    const-string/jumbo v7, "{}"

    move v3, v2

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$firstScreen;->_firstScreen:Ljava/util/List;

    const-string/jumbo v1, "20000123"

    const-string/jumbo v4, "app_20000123"

    const-string/jumbo v5, "\u6536\u6b3e"

    const-string/jumbo v6, "{\"canSearch\":\"true\"}"

    const-string/jumbo v7, "{}"

    move v3, v2

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    sget-object v3, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$firstScreen;->_firstScreen:Ljava/util/List;

    const-string/jumbo v4, "80000002"

    const/4 v5, 0x0

    const-string/jumbo v7, "app_80000002"

    const-string/jumbo v8, "\u670d\u52a1\u7a97"

    const-string/jumbo v9, "{\"canSearch\":\"false\",\"launchParams\":{\"url\":\"/www/pages/index.html\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"canPullDown\":\"NO\"},\"host\":{\"enable\":\"true\",\"dev\":\"http://80000002.h5app.alipay.net\",\"test\":\"http://80000002.h5app.test.alipay.net\",\"online\":\"https://80000002.h5app.alipay.com\"}}"

    const-string/jumbo v10, "{}"

    move v6, v2

    invoke-static/range {v3 .. v10}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$firstScreen;->_firstScreen:Ljava/util/List;

    const-string/jumbo v1, "20000046"

    const-string/jumbo v4, "app_20000046"

    const-string/jumbo v5, "\u6211\u7684\u5feb\u9012"

    const-string/jumbo v6, "{\"canSearch\": \"true\"}"

    const-string/jumbo v7, "{}"

    move v3, v2

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$firstScreen;->_firstScreen:Ljava/util/List;

    const-string/jumbo v1, "20000739"

    const-string/jumbo v4, "app_20000739"

    const-string/jumbo v5, "\u5929\u732b\u8d85\u5e02"

    const-string/jumbo v6, "{\"canSearch\":\"true\",\"launchParams\":{\"url\":\"http://chaoshi.m.tmall.com/\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"canPullDown\":\"NO\"}}"

    const-string/jumbo v7, "{}"

    move v3, v2

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$firstScreen;->_firstScreen:Ljava/util/List;

    const-string/jumbo v1, "20000032"

    const-string/jumbo v4, "app_20000032"

    const-string/jumbo v5, "\u4f59\u989d\u5b9d"

    const-string/jumbo v6, "{\"canSearch\":\"true\"}"

    const-string/jumbo v7, "{}"

    move v3, v2

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$firstScreen;->_firstScreen:Ljava/util/List;

    const-string/jumbo v1, "20000132"

    const-string/jumbo v4, "app_20000132"

    const-string/jumbo v5, "\u4eb2\u5bc6\u4ed8"

    const-string/jumbo v6, "{\"canSearch\":\"true\"}"

    const-string/jumbo v7, "{}"

    move v3, v2

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$firstScreen;->_firstScreen:Ljava/util/List;

    const-string/jumbo v1, "20000118"

    const-string/jumbo v4, "app_20000118"

    const-string/jumbo v5, "\u829d\u9ebb\u4fe1\u7528\u5206"

    const-string/jumbo v6, "{\"searchExtra\":{\"target\":\"credit\"}}"

    const-string/jumbo v7, "{}"

    move v3, v2

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$firstScreen;->_firstScreen:Ljava/util/List;

    const-string/jumbo v1, "2013082800000932"

    const-string/jumbo v4, "app_2013082800000932"

    const-string/jumbo v5, "\u6dd8\u5b9d"

    const-string/jumbo v6, "{\"canSearch\":\"false\"}"

    const-string/jumbo v7, "{}"

    move v3, v2

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$firstScreen;->_firstScreen:Ljava/util/List;

    const-string/jumbo v1, "20000691"

    const-string/jumbo v4, "app_20000691"

    const-string/jumbo v5, "\u6211\u7684\u5ba2\u670d"

    const-string/jumbo v6, "{\"canSearch\":\"true\",\"launchParams\":{\"url\":\"/www/src/index.htm\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"showLoading\":\"NO\",\"defaultTitle\":\"\u6211\u7684\u5ba2\u670d\",\"showOptionMenu\":\"YES\",\"canPullDown\":\"NO\"},\"host\":{\"dev\":\"http://mypa.h5app.alipay.net\",\"test\":\"https://mypa.h5app.test.alipay.net\",\"online\":\"https://mypa.h5app.alipay.com\"}}"

    const-string/jumbo v7, "{}"

    move v3, v2

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$firstScreen;->_firstScreen:Ljava/util/List;

    const-string/jumbo v1, "20000107"

    const-string/jumbo v4, "app_20000107"

    const-string/jumbo v5, "\u5883\u5916\u6e38"

    const-string/jumbo v6, "{\"launchParams\":{\"url\":\"https://ds.alipay.com/travel/jwy.htm\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"showLoading\":\"NO\",\"readTitle\":\"NO\",\"defaultTitle\":\"\u5883\u5916\u6e38\"},\"host\":{\"dev\":\"http://20000107.h5app.alipay.net\",\"test\":\"http://20000107.h5app.test.alipay.net\",\"online\":\"https://20000107.h5app.alipay.com\"}}"

    const-string/jumbo v7, "{}"

    move v3, v2

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$firstScreen;->_firstScreen:Ljava/util/List;

    const-string/jumbo v1, "20000778"

    const-string/jumbo v4, "app_20000778"

    const-string/jumbo v5, "\u6ef4\u6ef4\u51fa\u884c"

    const-string/jumbo v6, "{\"canSearch\":\"true\",\"launchParams\":{\"url\":\"https://openauth.alipay.com/oauth2/publicAppAuthorize.htm?app_id=2015042700050887&auth_skip=false&scope=auth_base&redirect_uri=http%3A%2F%2Fpay.xiaojukeji.com%2Fapi%2Fv2%2Fweixinapi%3Fsource%3Dalipay_wallet\",\"showTitleBar\":\"YES\",\"showToolBar\":\"NO\",\"canPullDown\":\"NO\",\"showOptionMenu\":\"NO\",\"defaultTitle\":\"\u6ef4\u6ef4\u51fa\u884c\",\"showProgress\":\"YES\",\"closeAfterPayFinish\":\"NO\",\"closeAfterPay\":\"NO\",\"ca\":\"NO\",\"backBehavior\":\"back\"}}"

    const-string/jumbo v7, "{}"

    move v3, v2

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$firstScreen;->_firstScreen:Ljava/util/List;

    const-string/jumbo v1, "20000000"

    const-string/jumbo v4, "app_20000000"

    const-string/jumbo v5, "\u5929\u732b"

    const-string/jumbo v6, "{\"canSearch\":\"true\",\"launchParams\":{\"url\":\"https://www.tmall.com/?force=m&from=alipay1\",\"backBehavior\":\"back\",\"showTitleBar\":\"YES\",\"smartToolBar\":\"NO\",\"showToolBar\":\"NO\"}}"

    const-string/jumbo v7, "{}"

    move v3, v2

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$firstScreen;->_firstScreen:Ljava/util/List;

    const-string/jumbo v1, "20000781"

    const-string/jumbo v4, "app_20000781"

    const-string/jumbo v5, "\u52a0\u6cb9\u670d\u52a1"

    const-string/jumbo v6, "{\"launchParams\":{\"url\":\"https://ds.alipay.com/cityService/jiayou.htm\",\"showTitlebar\":\"YES\",\"showToolBar\":\"NO\",\"defaultTitle\":\"\u52a0\u6cb9\u670d\u52a1\",\"showProgress\": \"YES\",\"canPullDown\": \"NO\"}}"

    const-string/jumbo v7, "{}"

    move v3, v2

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$firstScreen;->_firstScreen:Ljava/util/List;

    const-string/jumbo v1, "20000150"

    const-string/jumbo v4, "app_20000150"

    const-string/jumbo v5, "\u6c47\u7387\u6362\u7b97"

    const-string/jumbo v6, "{\"canSearch\":\"true\"}"

    const-string/jumbo v7, "{}"

    move v3, v2

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
