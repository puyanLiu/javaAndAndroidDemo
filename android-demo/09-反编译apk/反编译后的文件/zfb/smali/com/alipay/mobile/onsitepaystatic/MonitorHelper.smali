.class public Lcom/alipay/mobile/onsitepaystatic/MonitorHelper;
.super Ljava/lang/Object;


# static fields
.field private static final BEHAVOR_OSPGETSYNCMSG:Ljava/lang/String; = "ospgetsyncmsg"

.field private static final BEHAVOR_OSPREGCALLBACK:Ljava/lang/String; = "ospregcallback"

.field private static final UC_FFC_150917_01:Ljava/lang/String; = "UC_FFC_150917_01"

.field private static final UC_FFC_150917_02:Ljava/lang/String; = "UC_FFC_150917_02"

.field private static regTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/alipay/mobile/onsitepaystatic/MonitorHelper;->regTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static logBehavor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam1(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam2(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam3(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setUserCaseID(Ljava/lang/String;)V

    const-string/jumbo v1, "20000056"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setAppID(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->click(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    return-void
.end method

.method public static logGetSyncMessage()V
    .locals 6

    const-string/jumbo v0, "UC_FFC_150917_02"

    const-string/jumbo v1, "ospgetsyncmsg"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/alipay/mobile/onsitepaystatic/MonitorHelper;->regTime:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "-"

    const-string/jumbo v4, "-"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/onsitepaystatic/MonitorHelper;->logBehavor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static logRegistCallback()V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/mobile/onsitepaystatic/MonitorHelper;->regTime:J

    const-string/jumbo v0, "UC_FFC_150917_01"

    const-string/jumbo v1, "ospregcallback"

    const-string/jumbo v2, "-"

    const-string/jumbo v3, "-"

    const-string/jumbo v4, "-"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/onsitepaystatic/MonitorHelper;->logBehavor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
