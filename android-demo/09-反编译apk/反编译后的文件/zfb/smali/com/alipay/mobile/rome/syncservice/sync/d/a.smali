.class public Lcom/alipay/mobile/rome/syncservice/sync/d/a;
.super Ljava/lang/Object;
.source "BizConfigure.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:[Ljava/lang/String;

.field private static final e:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 15
    const-class v0, Lcom/alipay/mobile/rome/syncservice/sync/d/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->a:Ljava/lang/String;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 83
    sput-object v0, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->b:Ljava/util/Map;

    const-string/jumbo v1, "devicelock"

    const-string/jumbo v2, "devicelock"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->b:Ljava/util/Map;

    const-string/jumbo v1, "public-template"

    const-string/jumbo v2, "public-template"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->b:Ljava/util/Map;

    const-string/jumbo v1, "CONFIGSDK-NOTIFY"

    const-string/jumbo v2, "CONFIGSDK-NOTIFY"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->b:Ljava/util/Map;

    const-string/jumbo v1, "CDP-GLOBAL"

    const-string/jumbo v2, "CDP-GLOBAL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->b:Ljava/util/Map;

    const-string/jumbo v1, "CDPINIT-GLOBAL"

    const-string/jumbo v2, "CDPINIT-GLOBAL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->b:Ljava/util/Map;

    const-string/jumbo v1, "CASHIER-GSW"

    const-string/jumbo v2, "CASHIER-GSW"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->b:Ljava/util/Map;

    const-string/jumbo v1, "FALC-RES"

    const-string/jumbo v2, "FALC-RES"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->b:Ljava/util/Map;

    const-string/jumbo v1, "UCHAT-SKIN"

    const-string/jumbo v2, "UCHAT-SKIN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->b:Ljava/util/Map;

    const-string/jumbo v1, "UCHAT-EGG"

    const-string/jumbo v2, "UCHAT-EGG"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->b:Ljava/util/Map;

    const-string/jumbo v1, "MAC-APPSYN"

    const-string/jumbo v2, "MAC-APPSYN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 96
    sput-object v0, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->c:Ljava/util/Map;

    const-string/jumbo v1, "BILL-RP"

    const-string/jumbo v2, "BILL-RP"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->c:Ljava/util/Map;

    const-string/jumbo v1, "BILL-GLOBAL"

    const-string/jumbo v2, "BILL-GLOBAL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->c:Ljava/util/Map;

    const-string/jumbo v1, "COLLECT-R"

    const-string/jumbo v2, "COLLECT-R"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->c:Ljava/util/Map;

    const-string/jumbo v1, "chat"

    const-string/jumbo v2, "chat"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->c:Ljava/util/Map;

    const-string/jumbo v1, "public-follow"

    const-string/jumbo v2, "public-follow"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->c:Ljava/util/Map;

    const-string/jumbo v1, "NewEnvelope"

    const-string/jumbo v2, "NewEnvelope"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->c:Ljava/util/Map;

    const-string/jumbo v1, "CLIVE_MSG"

    const-string/jumbo v2, "CLIVE_MSG"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->c:Ljava/util/Map;

    const-string/jumbo v1, "securityverify"

    const-string/jumbo v2, "securityverify"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->c:Ljava/util/Map;

    const-string/jumbo v1, "UCHAT"

    const-string/jumbo v2, "UCHAT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->c:Ljava/util/Map;

    const-string/jumbo v1, "UCHAT-MRF"

    const-string/jumbo v2, "UCHAT-MRF"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->c:Ljava/util/Map;

    const-string/jumbo v1, "UCHAT-MRFC"

    const-string/jumbo v2, "UCHAT-MRFC"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->c:Ljava/util/Map;

    const-string/jumbo v1, "UCHAT-M"

    const-string/jumbo v2, "UCHAT-M"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->c:Ljava/util/Map;

    const-string/jumbo v1, "UCHAT-G"

    const-string/jumbo v2, "UCHAT-G"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->c:Ljava/util/Map;

    const-string/jumbo v1, "UCHAT-INPUT"

    const-string/jumbo v2, "UCHAT-INPUT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->c:Ljava/util/Map;

    const-string/jumbo v1, "UCHAT-CRN"

    const-string/jumbo v2, "UCHAT-CRN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->c:Ljava/util/Map;

    const-string/jumbo v1, "UCHAT-FEE"

    const-string/jumbo v2, "UCHAT-FEE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->c:Ljava/util/Map;

    const-string/jumbo v1, "UCHAT-LCN"

    const-string/jumbo v2, "UCHAT-LCN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->c:Ljava/util/Map;

    const-string/jumbo v1, "UCHAT-LCM"

    const-string/jumbo v2, "UCHAT-LCM"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->c:Ljava/util/Map;

    const-string/jumbo v1, "UCHAT-LCO"

    const-string/jumbo v2, "UCHAT-LCO"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->c:Ljava/util/Map;

    const-string/jumbo v1, "UCHAT-CONTACT"

    const-string/jumbo v2, "UCHAT-CONTACT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->c:Ljava/util/Map;

    const-string/jumbo v1, "MSG-BOX"

    const-string/jumbo v2, "MSG-BOX"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->c:Ljava/util/Map;

    const-string/jumbo v1, "public-intelrcmd"

    const-string/jumbo v2, "public-intelrcmd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->c:Ljava/util/Map;

    const-string/jumbo v1, "S_LBS"

    const-string/jumbo v2, "S_LBS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->c:Ljava/util/Map;

    const-string/jumbo v1, "H5-SERVICE"

    const-string/jumbo v2, "H5-SERVICE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->c:Ljava/util/Map;

    const-string/jumbo v1, "KABAO_NEW"

    const-string/jumbo v2, "KABAO_NEW"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->c:Ljava/util/Map;

    const-string/jumbo v1, "RP-BTM"

    const-string/jumbo v2, "RP-BTM"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->c:Ljava/util/Map;

    const-string/jumbo v1, "RP-BPM"

    const-string/jumbo v2, "RP-BPM"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->c:Ljava/util/Map;

    const-string/jumbo v1, "MS-MSG"

    const-string/jumbo v2, "MS-MSG"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->c:Ljava/util/Map;

    const-string/jumbo v1, "CDP-USER"

    const-string/jumbo v2, "CDP-USER"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->c:Ljava/util/Map;

    const-string/jumbo v1, "CDPINIT-USER"

    const-string/jumbo v2, "CDPINIT-USER"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->c:Ljava/util/Map;

    const-string/jumbo v1, "MAC-APPSYP"

    const-string/jumbo v2, "MAC-APPSYP"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->c:Ljava/util/Map;

    const-string/jumbo v1, "MIC-VERIFY"

    const-string/jumbo v2, "MIC-VERIFY"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->c:Ljava/util/Map;

    const-string/jumbo v1, "public-gplugin"

    const-string/jumbo v2, "public-gplugin"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->c:Ljava/util/Map;

    const-string/jumbo v1, "FACEPAY-INIT"

    const-string/jumbo v2, "FACEPAY-INIT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->c:Ljava/util/Map;

    const-string/jumbo v1, "MC-O2O-LCF"

    const-string/jumbo v2, "MC-O2O-LCF"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "devicelock"

    aput-object v1, v0, v3

    const-string/jumbo v1, "public-template"

    aput-object v1, v0, v4

    const-string/jumbo v1, "UCHAT-EGG"

    aput-object v1, v0, v5

    .line 141
    const-string/jumbo v1, "CDP-GLOBAL"

    aput-object v1, v0, v6

    const-string/jumbo v1, "CDPINIT-GLOBAL"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "CASHIER-GSW"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "CONFIGSDK-NOTIFY"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "FALC-RES"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "UCHAT-SKIN"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "MAC-APPSYN"

    aput-object v2, v0, v1

    .line 140
    sput-object v0, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->d:[Ljava/lang/String;

    .line 144
    const/16 v0, 0x23

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "CLIVE_MSG"

    aput-object v1, v0, v3

    const-string/jumbo v1, "BILL-RP"

    aput-object v1, v0, v4

    const-string/jumbo v1, "BILL-GLOBAL"

    aput-object v1, v0, v5

    const-string/jumbo v1, "COLLECT-R"

    aput-object v1, v0, v6

    const-string/jumbo v1, "chat"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "public-follow"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 145
    const-string/jumbo v2, "NewEnvelope"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "securityverify"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "UCHAT"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "UCHAT-MRF"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "UCHAT-MRFC"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "UCHAT-M"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "UCHAT-G"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "UCHAT-INPUT"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 146
    const-string/jumbo v2, "UCHAT-CRN"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "UCHAT-FEE"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "UCHAT-LCN"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "UCHAT-LCM"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "UCHAT-LCO"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "UCHAT-CONTACT"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "MSG-BOX"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "public-intelrcmd"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    .line 147
    const-string/jumbo v2, "S_LBS"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "H5-SERVICE"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "RP-BTM"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "RP-BPM"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "CDP-USER"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "CDPINIT-USER"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "MIC-VERIFY"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "public-gplugin"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "MC-O2O-LCF"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    .line 148
    const-string/jumbo v2, "KABAO_NEW"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string/jumbo v2, "MS-MSG"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string/jumbo v2, "FACEPAY-INIT"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string/jumbo v2, "MAC-APPSYP"

    aput-object v2, v0, v1

    .line 144
    sput-object v0, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->e:[Ljava/lang/String;

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

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 170
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    const-string/jumbo v0, "deviceBased"

    .line 177
    :goto_0
    return-object v0

    .line 172
    :cond_0
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    const-string/jumbo v0, "userBased"

    goto :goto_0

    .line 175
    :cond_1
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getBizType: [unknown biz type][ biz="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string/jumbo v0, "null"

    goto :goto_0
.end method

.method public static a()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->d:[Ljava/lang/String;

    return-object v0
.end method

.method public static b()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->e:[Ljava/lang/String;

    return-object v0
.end method
