.class public Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$contactB;
.super Ljava/lang/Object;
.source "StaticAppInfoDataSource.java"


# static fields
.field public static _contactB:Ljava/util/List;
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
    .locals 8

    .prologue
    const/4 v2, 0x1

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 98
    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$contactB;->_contactB:Ljava/util/List;

    const-string/jumbo v1, "20000219"

    const-string/jumbo v4, ""

    const-string/jumbo v5, "\u56fe\u7247"

    const-string/jumbo v6, "{\"canSearch\":\"false\",\"selfApp\":\"1\"}"

    const-string/jumbo v7, "{}"

    move v3, v2

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$contactB;->_contactB:Ljava/util/List;

    const-string/jumbo v1, "20000780"

    const-string/jumbo v4, ""

    const-string/jumbo v5, "\u5c0f\u89c6\u9891"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "{}"

    move v3, v2

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$contactB;->_contactB:Ljava/util/List;

    const-string/jumbo v1, "20000244"

    const-string/jumbo v4, ""

    const-string/jumbo v5, "\u8f6c\u8d26"

    const-string/jumbo v6, "{\"canSearch\":\"false\",\"mainType\":\"0\",\"actionType\":\"lotpay\"}"

    const-string/jumbo v7, "{}"

    move v3, v2

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$contactB;->_contactB:Ljava/util/List;

    const-string/jumbo v1, "20000688"

    const-string/jumbo v4, ""

    const-string/jumbo v5, "\u7ea2\u5305"

    const-string/jumbo v6, "{\"canSearch\":\"false\",\"nameForUserStage\":\"\u7ea2\u5305\",\"target\":\"group\",\"schemeMode\":\"portalInside\",\"prevBiz\": \"chat\"}"

    const-string/jumbo v7, "{}"

    move v3, v2

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$contactB;->_contactB:Ljava/util/List;

    const-string/jumbo v1, "20000263"

    const-string/jumbo v4, ""

    const-string/jumbo v5, "AA\u6536\u6b3e"

    const-string/jumbo v6, "{\"actionType\":\"form\",\"actionId\":\"aa\"}"

    const-string/jumbo v7, "{}"

    move v3, v2

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$contactB;->_contactB:Ljava/util/List;

    const-string/jumbo v1, "20000260"

    const-string/jumbo v4, ""

    const-string/jumbo v5, "\u6c5f\u6e56\u6551\u6025"

    const-string/jumbo v6, "{\"actionType\":\"form\",\"actionId\":\"emergency\"}"

    const-string/jumbo v7, "{}"

    move v3, v2

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$contactB;->_contactB:Ljava/util/List;

    const-string/jumbo v1, "20000224"

    const-string/jumbo v4, ""

    const-string/jumbo v5, "\u5546\u5bb6"

    const-string/jumbo v6, "{\"canSearch\":\"false\",\"target\":\"merchantChoose\"}"

    const-string/jumbo v7, "{}"

    move v3, v2

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$contactB;->_contactB:Ljava/util/List;

    const-string/jumbo v1, "20000226"

    const-string/jumbo v4, ""

    const-string/jumbo v5, "\u4f4d\u7f6e"

    const-string/jumbo v6, "{\"canSearch\":\"false\",\"selfApp\":\"1\"}"

    const-string/jumbo v7, "{}"

    move v3, v2

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$contactB;->_contactB:Ljava/util/List;

    const-string/jumbo v1, "20000228"

    const-string/jumbo v4, ""

    const-string/jumbo v5, "\u540d\u7247"

    const-string/jumbo v6, "{\"canSearch\":\"false\",\"selfApp\":\"1\"}"

    const-string/jumbo v7, "{}"

    move v3, v2

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$contactB;->_contactB:Ljava/util/List;

    const-string/jumbo v1, "20000245"

    const-string/jumbo v4, "app_20000245"

    const-string/jumbo v5, "\u6536\u85cf"

    const-string/jumbo v6, "{\"canSearch\":\"false\",\"target\":\"present\",\"selfApp\":\"1\",\"nameForUserStage\":\"\u6536\u85cf\",\"iconForUserStage\":\"http://tfs.alipayobjects.com/L1/71/10001/20150506/1_0_0_0/1434350224749_icon_L.png\"}"

    const-string/jumbo v7, "{}"

    move v3, v2

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$contactB;->_contactB:Ljava/util/List;

    const-string/jumbo v1, "20000259"

    const-string/jumbo v4, ""

    const-string/jumbo v5, "\u6d3b\u52a8\u6536\u6b3e"

    const-string/jumbo v6, "{\"actionType\":\"form\",\"actionId\":\"general\"}"

    const-string/jumbo v7, "{}"

    move v3, v2

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StaticAppInfoDataSource$contactB;->_contactB:Ljava/util/List;

    const-string/jumbo v1, "20000232"

    const-string/jumbo v4, ""

    const-string/jumbo v5, "\u4e00\u8d77\u4e70\u5355"

    const-string/jumbo v6, "{\"canSearch\":\"false\",\"actionType\":\"payTogetherSelect\",\"bizType\":\"4\"}"

    const-string/jumbo v7, "{}"

    move v3, v2

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDaoImpl;->addRank(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
