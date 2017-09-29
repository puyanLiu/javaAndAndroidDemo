.class public Lcom/alipay/mobile/beehive/util/BankCardColorUtil;
.super Ljava/lang/Object;
.source "BankCardColorUtil.java"


# static fields
.field public static final BLUE:I = 0x4a90e2

.field public static final BLUE2:I = 0xaaee

.field public static final GRAY:I = 0xdadada

.field public static final GREEN:I = 0x84c642

.field private static final LOG:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final ORANGE:I = 0xffad26

.field public static final RED:I = 0xe15a61

.field private static colorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/beehive/util/GradientColor;",
            ">;"
        }
    .end annotation
.end field

.field private static singleColorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/16 v9, 0x17

    const/16 v8, 0x15

    const/4 v0, 0x0

    .line 10
    const-class v1, Lcom/alipay/mobile/beehive/util/BankCardColorUtil;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alipay/mobile/beehive/util/BankCardColorUtil;->LOG_TAG:Ljava/lang/String;

    .line 11
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sput-object v1, Lcom/alipay/mobile/beehive/util/BankCardColorUtil;->LOG:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    .line 25
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/alipay/mobile/beehive/util/BankCardColorUtil;->colorMap:Ljava/util/Map;

    .line 26
    const/16 v1, 0x2f

    new-array v2, v1, [Ljava/lang/String;

    const-string/jumbo v1, "BJBANK"

    aput-object v1, v2, v0

    const-string/jumbo v1, "SPABANK"

    aput-object v1, v2, v5

    const-string/jumbo v1, "GSBANK"

    aput-object v1, v2, v6

    const/4 v1, 0x3

    const-string/jumbo v3, "DYLSCB"

    aput-object v3, v2, v1

    const/4 v1, 0x4

    const-string/jumbo v3, "HXBANK"

    aput-object v3, v2, v1

    const/4 v1, 0x5

    const-string/jumbo v3, "HRXJB"

    aput-object v3, v2, v1

    const/4 v1, 0x6

    .line 27
    const-string/jumbo v3, "CMB"

    aput-object v3, v2, v1

    const/4 v1, 0x7

    const-string/jumbo v3, "CDN_GDB"

    aput-object v3, v2, v1

    const/16 v1, 0x8

    const-string/jumbo v3, "BOQH"

    aput-object v3, v2, v1

    const/16 v1, 0x9

    const-string/jumbo v3, "CDN_BJBANK"

    aput-object v3, v2, v1

    const/16 v1, 0xa

    const-string/jumbo v3, "BJRCB"

    aput-object v3, v2, v1

    const/16 v1, 0xb

    const-string/jumbo v3, "CITIC"

    aput-object v3, v2, v1

    const/16 v1, 0xc

    .line 28
    const-string/jumbo v3, "TSBANK"

    aput-object v3, v2, v1

    const/16 v1, 0xd

    const-string/jumbo v3, "BOD"

    aput-object v3, v2, v1

    const/16 v1, 0xe

    const-string/jumbo v3, "BOCCCL"

    aput-object v3, v2, v1

    const/16 v1, 0xf

    const-string/jumbo v3, "EGBANK"

    aput-object v3, v2, v1

    const/16 v1, 0x10

    const-string/jumbo v3, "BODD"

    aput-object v3, v2, v1

    const/16 v1, 0x11

    const-string/jumbo v3, "ICBC"

    aput-object v3, v2, v1

    const/16 v1, 0x12

    const-string/jumbo v3, "HBC"

    aput-object v3, v2, v1

    const/16 v1, 0x13

    .line 29
    const-string/jumbo v3, "BOJZ"

    aput-object v3, v2, v1

    const/16 v1, 0x14

    const-string/jumbo v3, "JZCBANK"

    aput-object v3, v2, v1

    const-string/jumbo v1, "JSB"

    aput-object v1, v2, v8

    const/16 v1, 0x16

    const-string/jumbo v3, "BOP"

    aput-object v3, v2, v1

    const-string/jumbo v1, "UBCHN"

    aput-object v1, v2, v9

    const/16 v1, 0x18

    const-string/jumbo v3, "JHBANK"

    aput-object v3, v2, v1

    const/16 v1, 0x19

    const-string/jumbo v3, "YNRCC"

    aput-object v3, v2, v1

    const/16 v1, 0x1a

    .line 30
    const-string/jumbo v3, "QJCCB"

    aput-object v3, v2, v1

    const/16 v1, 0x1b

    const-string/jumbo v3, "NBBANK"

    aput-object v3, v2, v1

    const/16 v1, 0x1c

    const-string/jumbo v3, "TLBANK"

    aput-object v3, v2, v1

    const/16 v1, 0x1d

    const-string/jumbo v3, "JZBANK"

    aput-object v3, v2, v1

    const/16 v1, 0x1e

    const-string/jumbo v3, "ASCB"

    aput-object v3, v2, v1

    const/16 v1, 0x1f

    const-string/jumbo v3, "WZCB"

    aput-object v3, v2, v1

    const/16 v1, 0x20

    const-string/jumbo v3, "DLB"

    aput-object v3, v2, v1

    const/16 v1, 0x21

    .line 31
    const-string/jumbo v3, "ZYCBANK"

    aput-object v3, v2, v1

    const/16 v1, 0x22

    const-string/jumbo v3, "ZZBANK"

    aput-object v3, v2, v1

    const/16 v1, 0x23

    const-string/jumbo v3, "HSBANK"

    aput-object v3, v2, v1

    const/16 v1, 0x24

    const-string/jumbo v3, "HKBEA"

    aput-object v3, v2, v1

    const/16 v1, 0x25

    const-string/jumbo v3, "CRCBANK"

    aput-object v3, v2, v1

    const/16 v1, 0x26

    const-string/jumbo v3, "NXBANK"

    aput-object v3, v2, v1

    const/16 v1, 0x27

    .line 32
    const-string/jumbo v3, "GCB"

    aput-object v3, v2, v1

    const/16 v1, 0x28

    const-string/jumbo v3, "CSCB"

    aput-object v3, v2, v1

    const/16 v1, 0x29

    const-string/jumbo v3, "FDB"

    aput-object v3, v2, v1

    const/16 v1, 0x2a

    const-string/jumbo v3, "QDCCB"

    aput-object v3, v2, v1

    const/16 v1, 0x2b

    const-string/jumbo v3, "BOC"

    aput-object v3, v2, v1

    const/16 v1, 0x2c

    const-string/jumbo v3, "NJCB"

    aput-object v3, v2, v1

    const/16 v1, 0x2d

    const-string/jumbo v3, "SJBANK"

    aput-object v3, v2, v1

    const/16 v1, 0x2e

    const-string/jumbo v3, "SRBANK"

    aput-object v3, v2, v1

    .line 33
    new-array v3, v8, [Ljava/lang/String;

    const-string/jumbo v1, "SHRCB"

    aput-object v1, v3, v0

    const-string/jumbo v1, "BSB"

    aput-object v1, v3, v5

    const-string/jumbo v1, "ANTBANK"

    aput-object v1, v3, v6

    const/4 v1, 0x3

    const-string/jumbo v4, "NCB"

    aput-object v4, v3, v1

    const/4 v1, 0x4

    const-string/jumbo v4, "CDRCB"

    aput-object v4, v3, v1

    const/4 v1, 0x5

    const-string/jumbo v4, "CQBANK"

    aput-object v4, v3, v1

    const/4 v1, 0x6

    .line 34
    const-string/jumbo v4, "ZZBANK"

    aput-object v4, v3, v1

    const/4 v1, 0x7

    const-string/jumbo v4, "BHB"

    aput-object v4, v3, v1

    const/16 v1, 0x8

    const-string/jumbo v4, "YTBANK"

    aput-object v4, v3, v1

    const/16 v1, 0x9

    const-string/jumbo v4, "FBBANK"

    aput-object v4, v3, v1

    const/16 v1, 0xa

    const-string/jumbo v4, "ZJNX"

    aput-object v4, v3, v1

    const/16 v1, 0xb

    const-string/jumbo v4, "NBCBANK"

    aput-object v4, v3, v1

    const/16 v1, 0xc

    .line 35
    const-string/jumbo v4, "CMBC"

    aput-object v4, v3, v1

    const/16 v1, 0xd

    const-string/jumbo v4, "ABC"

    aput-object v4, v3, v1

    const/16 v1, 0xe

    const-string/jumbo v4, "PSBC"

    aput-object v4, v3, v1

    const/16 v1, 0xf

    const-string/jumbo v4, "NMGNXS"

    aput-object v4, v3, v1

    const/16 v1, 0x10

    const-string/jumbo v4, "SCRCU"

    aput-object v4, v3, v1

    const/16 v1, 0x11

    const-string/jumbo v4, "SCB"

    aput-object v4, v3, v1

    const/16 v1, 0x12

    const-string/jumbo v4, "BOSZ"

    aput-object v4, v3, v1

    const/16 v1, 0x13

    const-string/jumbo v4, "YDRCB"

    aput-object v4, v3, v1

    const/16 v1, 0x14

    const-string/jumbo v4, "URMQCCB"

    aput-object v4, v3, v1

    .line 36
    new-array v4, v9, [Ljava/lang/String;

    const-string/jumbo v1, "ZYB"

    aput-object v1, v4, v0

    const-string/jumbo v1, "XCYH"

    aput-object v1, v4, v5

    const-string/jumbo v1, "WOORI"

    aput-object v1, v4, v6

    const/4 v1, 0x3

    const-string/jumbo v5, "HBRCB"

    aput-object v5, v4, v1

    const/4 v1, 0x4

    const-string/jumbo v5, "BOQZ"

    aput-object v5, v4, v1

    const/4 v1, 0x5

    const-string/jumbo v5, "HZCB"

    aput-object v5, v4, v1

    const/4 v1, 0x6

    .line 37
    const-string/jumbo v5, "BOYK"

    aput-object v5, v4, v1

    const/4 v1, 0x7

    const-string/jumbo v5, "JSBANK"

    aput-object v5, v4, v1

    const/16 v1, 0x8

    const-string/jumbo v5, "CEBBANK"

    aput-object v5, v4, v1

    const/16 v1, 0x9

    const-string/jumbo v5, "BOL"

    aput-object v5, v4, v1

    const/16 v1, 0xa

    const-string/jumbo v5, "CITICN"

    aput-object v5, v4, v1

    const/16 v1, 0xb

    const-string/jumbo v5, "SPDB"

    aput-object v5, v4, v1

    const/16 v1, 0xc

    const-string/jumbo v5, "COMM"

    aput-object v5, v4, v1

    const/16 v1, 0xd

    .line 38
    const-string/jumbo v5, "CIB"

    aput-object v5, v4, v1

    const/16 v1, 0xe

    const-string/jumbo v5, "CCB"

    aput-object v5, v4, v1

    const/16 v1, 0xf

    const-string/jumbo v5, "SHBANK"

    aput-object v5, v4, v1

    const/16 v1, 0x10

    const-string/jumbo v5, "GLBANK"

    aput-object v5, v4, v1

    const/16 v1, 0x11

    const-string/jumbo v5, "HKB"

    aput-object v5, v4, v1

    const/16 v1, 0x12

    const-string/jumbo v5, "LNRCC"

    aput-object v5, v4, v1

    const/16 v1, 0x13

    const-string/jumbo v5, "ZZYH"

    aput-object v5, v4, v1

    const/16 v1, 0x14

    const-string/jumbo v5, "TZCB"

    aput-object v5, v4, v1

    const-string/jumbo v1, "HRBANK"

    aput-object v1, v4, v8

    const/16 v1, 0x16

    const-string/jumbo v5, "TCCB"

    aput-object v5, v4, v1

    move v1, v0

    .line 39
    :goto_0
    const/16 v5, 0x2f

    if-lt v1, v5, :cond_0

    move v1, v0

    .line 42
    :goto_1
    if-lt v1, v8, :cond_1

    move v1, v0

    .line 45
    :goto_2
    if-lt v1, v9, :cond_2

    .line 49
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/alipay/mobile/beehive/util/BankCardColorUtil;->singleColorMap:Ljava/util/Map;

    move v1, v0

    .line 50
    :goto_3
    const/16 v5, 0x2f

    if-lt v1, v5, :cond_3

    move v1, v0

    .line 53
    :goto_4
    if-lt v1, v8, :cond_4

    .line 56
    :goto_5
    if-lt v0, v9, :cond_5

    .line 60
    sget-object v0, Lcom/alipay/mobile/beehive/util/BankCardColorUtil;->singleColorMap:Ljava/util/Map;

    const-string/jumbo v1, "ALIPAY"

    const v2, 0xaaee

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/alipay/mobile/beehive/util/BankCardColorUtil;->singleColorMap:Ljava/util/Map;

    const-string/jumbo v1, "CASH"

    const v2, 0xffad26

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/alipay/mobile/beehive/util/BankCardColorUtil;->singleColorMap:Ljava/util/Map;

    const-string/jumbo v1, "DEFAULT"

    const v2, 0xdadada

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    return-void

    .line 39
    :cond_0
    aget-object v5, v2, v1

    .line 40
    sget-object v6, Lcom/alipay/mobile/beehive/util/BankCardColorUtil;->colorMap:Ljava/util/Map;

    sget-object v7, Lcom/alipay/mobile/beehive/util/GradientColor;->RED:Lcom/alipay/mobile/beehive/util/GradientColor;

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 42
    :cond_1
    aget-object v5, v3, v1

    .line 43
    sget-object v6, Lcom/alipay/mobile/beehive/util/BankCardColorUtil;->colorMap:Ljava/util/Map;

    sget-object v7, Lcom/alipay/mobile/beehive/util/GradientColor;->GREEN:Lcom/alipay/mobile/beehive/util/GradientColor;

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 45
    :cond_2
    aget-object v5, v4, v1

    .line 46
    sget-object v6, Lcom/alipay/mobile/beehive/util/BankCardColorUtil;->colorMap:Ljava/util/Map;

    sget-object v7, Lcom/alipay/mobile/beehive/util/GradientColor;->BLUE:Lcom/alipay/mobile/beehive/util/GradientColor;

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 50
    :cond_3
    aget-object v5, v2, v1

    .line 51
    sget-object v6, Lcom/alipay/mobile/beehive/util/BankCardColorUtil;->singleColorMap:Ljava/util/Map;

    const v7, 0xe15a61

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 53
    :cond_4
    aget-object v2, v3, v1

    .line 54
    sget-object v5, Lcom/alipay/mobile/beehive/util/BankCardColorUtil;->singleColorMap:Ljava/util/Map;

    const v6, 0x84c642

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 56
    :cond_5
    aget-object v1, v4, v0

    .line 57
    sget-object v2, Lcom/alipay/mobile/beehive/util/BankCardColorUtil;->singleColorMap:Ljava/util/Map;

    const v3, 0x4a90e2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_5
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBankColor(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/alipay/mobile/beehive/util/BankCardColorUtil;->singleColorMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 87
    if-nez v0, :cond_0

    const v0, 0xaaee

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public static getGradientColor(Ljava/lang/String;)Lcom/alipay/mobile/beehive/util/GradientColor;
    .locals 4

    .prologue
    .line 72
    sget-object v0, Lcom/alipay/mobile/beehive/util/BankCardColorUtil;->colorMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/util/GradientColor;

    .line 73
    if-nez v0, :cond_0

    .line 74
    sget-object v0, Lcom/alipay/mobile/beehive/util/BankCardColorUtil;->LOG:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    sget-object v1, Lcom/alipay/mobile/beehive/util/BankCardColorUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "there is no given gradient color for instId:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    sget-object v0, Lcom/alipay/mobile/beehive/util/GradientColor;->BLUE:Lcom/alipay/mobile/beehive/util/GradientColor;

    .line 78
    :cond_0
    return-object v0
.end method

.method public static test()V
    .locals 0

    .prologue
    .line 90
    return-void
.end method
