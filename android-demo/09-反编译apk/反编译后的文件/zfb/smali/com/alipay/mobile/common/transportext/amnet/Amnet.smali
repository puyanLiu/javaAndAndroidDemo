.class public Lcom/alipay/mobile/common/transportext/amnet/Amnet;
.super Ljava/lang/Object;
.source "Amnet.java"


# static fields
.field private static final CHARSET:Ljava/lang/String; = "UTF-8"

.field private static final CNT_LNK_MAX:I = 0x5

.field private static final CNT_LNK_MIN:I = 0x1

.field private static final CNT_SSL_AUTO:I = 0x2

.field private static final IH_DEADLINE:I = 0x240c8400

.field private static final IH_DELTA_BACK:I = 0x3c

.field private static final IH_DELTA_FORE:I = 0x14

.field private static final IH_FAIL_BACK:I = 0x3

.field private static final IH_FAIL_FORE:I = 0x5

.field private static final IH_KEEP:I = 0x3

.field private static final IH_MAX:I = 0x4b0

.field private static final IH_MIN:I = 0x14

.field private static final KEY_CFG_HB:Ljava/lang/String; = "/cfg-heartbeat"

.field private static final KEY_IH_STAMP:Ljava/lang/String; = "/stamp"

.field private static final KEY_IH_USING:Ljava/lang/String; = "/using"

.field private static final KEY_MTLS_CACHE:Ljava/lang/String; = "/mtls-cache"

.field private static final KEY_MTLS_SESSION:Ljava/lang/String; = "/mtls-session"

.field private static final KEY_STD_SESSION:Ljava/lang/String; = "/std-session"

.field private static final LNK_ACT_ACTIVE:Ljava/lang/String; = "2"

.field private static final LNK_ACT_INIT:Ljava/lang/String; = "1"

.field private static final LNK_ACT_LIMIT:Ljava/lang/String; = "4"

.field private static final LNK_ACT_PASSIVE:Ljava/lang/String; = "3"

.field private static final LNK_ACT_UNKNOWN:Ljava/lang/String; = "0"

.field private static final LOOPBACK:Ljava/lang/String; = "127.0.0.1"

.field private static final NAME_DATA_PKG:Ljava/lang/String; = "data-package"

.field private static final NAME_HOLDING:Ljava/lang/String; = "link-holding"

.field private static final NAME_IH_INTVL:Ljava/lang/String; = "intelligent-interval"

.field private static final NAME_IH_SLNC:Ljava/lang/String; = "intelligent-silence"

.field private static final NAME_LINK:Ljava/lang/String; = "connect"

.field private static final NAME_PERIOD:Ljava/lang/String; = "period"

.field private static final NAME_RETRY:Ljava/lang/String; = "reconnect"

.field private static final SSL_AUTO_MTLS:I = -0x3

.field private static final SSL_AUTO_STD:I = -0x2

.field private static final SSL_DUMMY:I = -0x4

.field private static final SSL_NONE:I = -0x1

.field private static final TAG_ADDR_LS:Ljava/lang/String; = "-AMNET-ADDR-LIST"

.field private static final TAG_ALT:Ljava/lang/String; = "-AMNET-ALT"

.field private static final TAG_ALT_GND:Ljava/lang/String; = "-AMNET-ALT-GROUND"

.field private static final TAG_ALT_NET:Ljava/lang/String; = "-AMNET-ALT-NET"

.field private static final TAG_ALT_PRC:Ljava/lang/String; = "-AMNET-ALT-PROCESS"

.field private static final TAG_ALT_SCR:Ljava/lang/String; = "-AMNET-ALT-SCREEN"

.field private static final TAG_ALT_SSL:Ljava/lang/String; = "-AMNET-ALT-SSL"

.field private static final TAG_CTL:Ljava/lang/String; = "-AMNET-CTL"

.field private static final TAG_DATA:Ljava/lang/String; = "-AMNET-DATA"

.field private static final TAG_DETECT:Ljava/lang/String; = "-AMNET-DETECT"

.field private static final TAG_IH:Ljava/lang/String; = "-AMNET-IH"

.field private static final TAG_IH_PUT:Ljava/lang/String; = "-AMNET-IH-PUT"

.field private static final TAG_LINK:Ljava/lang/String; = "-AMNET-LINK"

.field private static final TAG_SSL:Ljava/lang/String; = "-AMNET-SSL"

.field private static final TAG_TMR_DAT:Ljava/lang/String; = "-AMNET-TMR-DATA"

.field private static explorer:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;


# instance fields
.field private account:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private actLink:Ljava/lang/String;

.field private addrLong:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$ServerAddr;

.field private addrShort:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$ServerAddr;

.field private allowedAct:Z

.field private allowedHb:Z

.field private aptotic:Z

.field private background:Z

.field private bakLong:I

.field private bakShort:I

.field private caLong:Ljava/lang/String;

.field private caShort:Ljava/lang/String;

.field private candidate:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

.field private certLong:Ljava/lang/String;

.field private certShort:Ljava/lang/String;

.field private cfgIh:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;",
            ">;"
        }
    .end annotation
.end field

.field private countFlash:I

.field private countLink:I

.field private countLoad:I

.field private current:Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

.field private delayed:Z

.field private detection:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;

.field private disable:Z

.field private disused:Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

.field private handler:Lcom/alipay/mobile/common/transportext/amnet/Mercury;

.field private hasteful:Z

.field private hbBack:[Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;

.field private hbFore:[Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;

.field private hostLong:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;

.field private hostShort:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;

.field private importance:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/alipay/mobile/common/transportext/amnet/Amnet$Data;",
            ">;"
        }
    .end annotation
.end field

.field private infTry:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Detect;

.field private initialized:Z

.field private levelCur:I

.field private linkage:Lcom/alipay/mobile/common/transportext/amnet/Linkage;

.field private lsAddr:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$ServerAddr;

.field private missing:Z

.field private nameNet:Ljava/lang/String;

.field private networkCur:I

.field private notepad:Lcom/alipay/mobile/common/transportext/amnet/Notepad;

.field private pending:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/alipay/mobile/common/transportext/amnet/Amnet$Data;",
            ">;"
        }
    .end annotation
.end field

.field private pendingCur:I

.field private practicable:Z

.field private primary:Z

.field private probing:Z

.field private renewed:Z

.field private resendable:Z

.field private resetCur:I

.field private ripe:Z

.field private sendable:Z

.field private seqCur:I

.field private service:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Byte;",
            "Lcom/alipay/mobile/common/transportext/amnet/Channel;",
            ">;"
        }
    .end annotation
.end field

.field private sslLong:I

.field private sslShort:I

.field private stampAct:J

.field private stampCfg:J

.field private stampLnk:J

.field private stampNew:J

.field private stampSeq:J

.field private stampSsl:J

.field private stampTry:J

.field private stateCur:I

.field private storage:Lcom/alipay/mobile/common/transportext/amnet/Storage;

.field private tmCfrm:[I

.field private tmLink:[Lcom/alipay/mobile/common/transportext/amnet/Configuration$TimeOut;

.field private tmWait:[I

.field private tmrHolding:Lcom/alipay/mobile/common/transportext/amnet/Amnet$HoldingTmr;

.field private tmrLink:Lcom/alipay/mobile/common/transportext/amnet/Amnet$LinkTmr;

.field private tmrPeriod:Lcom/alipay/mobile/common/transportext/amnet/Amnet$PeriodTmr;

.field private tmrRetry:Lcom/alipay/mobile/common/transportext/amnet/Amnet$RetryTmr;

.field private valBrk:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Flash;

.field private waitCur:I

.field private zipCur:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7006
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->explorer:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6917
    new-instance v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DftNotepad;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DftNotepad;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet$1;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->notepad:Lcom/alipay/mobile/common/transportext/amnet/Notepad;

    .line 6918
    new-instance v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DftStorage;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DftStorage;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet$1;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->storage:Lcom/alipay/mobile/common/transportext/amnet/Storage;

    .line 6919
    new-instance v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DftLinkage;

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DftLinkage;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$1;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->linkage:Lcom/alipay/mobile/common/transportext/amnet/Linkage;

    .line 6920
    new-instance v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DftMercury;

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DftMercury;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$1;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->handler:Lcom/alipay/mobile/common/transportext/amnet/Mercury;

    .line 6921
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->service:Ljava/util/Map;

    .line 6922
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->pending:Ljava/util/LinkedList;

    .line 6924
    iput-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->current:Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    .line 6925
    iput-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->disused:Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    .line 6926
    iput-boolean v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->primary:Z

    .line 6927
    iput-boolean v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->probing:Z

    .line 6928
    iput-boolean v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->aptotic:Z

    .line 6930
    iput-boolean v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->disable:Z

    .line 6931
    iput-boolean v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->background:Z

    .line 6932
    iput-boolean v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->missing:Z

    .line 6934
    iput-boolean v3, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->ripe:Z

    .line 6935
    iput-boolean v3, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->initialized:Z

    .line 6936
    iput-boolean v3, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->sendable:Z

    .line 6937
    iput-boolean v3, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->practicable:Z

    .line 6938
    iput-boolean v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->resendable:Z

    .line 6939
    iput-boolean v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->delayed:Z

    .line 6940
    iput-boolean v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->hasteful:Z

    .line 6941
    iput-boolean v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->renewed:Z

    .line 6943
    iput-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->candidate:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    .line 6944
    iput-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->detection:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;

    .line 6945
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->account:Ljava/util/Map;

    .line 6946
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->importance:Ljava/util/LinkedList;

    .line 6948
    iput-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->nameNet:Ljava/lang/String;

    .line 6949
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->actLink:Ljava/lang/String;

    .line 6951
    iput-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->certLong:Ljava/lang/String;

    .line 6952
    iput-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->certShort:Ljava/lang/String;

    .line 6953
    iput-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->caLong:Ljava/lang/String;

    .line 6954
    iput-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->caShort:Ljava/lang/String;

    .line 6955
    iput-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->hostLong:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;

    .line 6956
    iput-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->hostShort:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;

    .line 6957
    iput-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->addrLong:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$ServerAddr;

    .line 6958
    iput-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->addrShort:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$ServerAddr;

    .line 6959
    iput v6, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->sslLong:I

    .line 6960
    iput v6, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->sslShort:I

    .line 6961
    iput v6, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->bakLong:I

    .line 6962
    iput v6, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->bakShort:I

    .line 6964
    iput v3, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->countFlash:I

    .line 6965
    iput v3, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->countLoad:I

    .line 6966
    iput v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->countLink:I

    .line 6967
    iput v6, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->waitCur:I

    .line 6968
    const/16 v0, 0x1e

    iput v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->pendingCur:I

    .line 6969
    iput v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->levelCur:I

    .line 6970
    iput v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->zipCur:I

    .line 6971
    iput v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->resetCur:I

    .line 6972
    iput v3, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->networkCur:I

    .line 6973
    iput v3, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->seqCur:I

    .line 6974
    iput v3, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->stateCur:I

    .line 6975
    iput-boolean v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->allowedHb:Z

    .line 6976
    iput-boolean v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->allowedAct:Z

    .line 6978
    iput-wide v4, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->stampLnk:J

    .line 6979
    iput-wide v4, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->stampSsl:J

    .line 6980
    iput-wide v4, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->stampAct:J

    .line 6981
    iput-wide v4, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->stampTry:J

    .line 6982
    iput-wide v4, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->stampSeq:J

    .line 6983
    iput-wide v4, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->stampNew:J

    .line 6984
    iput-wide v4, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->stampCfg:J

    .line 6986
    new-instance v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$PeriodTmr;

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$PeriodTmr;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$1;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->tmrPeriod:Lcom/alipay/mobile/common/transportext/amnet/Amnet$PeriodTmr;

    .line 6987
    new-instance v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LinkTmr;

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LinkTmr;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$1;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->tmrLink:Lcom/alipay/mobile/common/transportext/amnet/Amnet$LinkTmr;

    .line 6988
    new-instance v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$HoldingTmr;

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$HoldingTmr;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$1;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->tmrHolding:Lcom/alipay/mobile/common/transportext/amnet/Amnet$HoldingTmr;

    .line 6989
    new-instance v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$RetryTmr;

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$RetryTmr;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$1;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->tmrRetry:Lcom/alipay/mobile/common/transportext/amnet/Amnet$RetryTmr;

    .line 6991
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/alipay/mobile/common/transportext/amnet/Configuration$TimeOut;

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->tmLink:[Lcom/alipay/mobile/common/transportext/amnet/Configuration$TimeOut;

    .line 6993
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->hbFore:[Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;

    .line 6995
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->hbBack:[Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;

    .line 6997
    iput-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->lsAddr:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$ServerAddr;

    .line 6998
    iput-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->tmWait:[I

    .line 6999
    iput-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->tmCfrm:[I

    .line 7000
    new-instance v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Flash;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Flash;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->valBrk:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Flash;

    .line 7001
    iput-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->infTry:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Detect;

    .line 7003
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->cfgIh:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$100(Lcom/alipay/mobile/common/transportext/amnet/Amnet;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->record(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->candidate:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct/range {p0 .. p7}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->dominate(Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Amnet$LinkTmr;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->tmrLink:Lcom/alipay/mobile/common/transportext/amnet/Amnet$LinkTmr;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/mnet/Plan;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->closeTimer(Lcom/alipay/mobile/common/transportext/mnet/Plan;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/alipay/mobile/common/transportext/amnet/Amnet;I)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->change(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Z
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->flush()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->aptotic:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->reload()V

    return-void
.end method

.method static synthetic access$1802(Lcom/alipay/mobile/common/transportext/amnet/Amnet;J)J
    .locals 0

    .prologue
    .line 22
    iput-wide p1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->stampAct:J

    return-wide p1
.end method

.method static synthetic access$1900(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->keySession()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Mercury;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->handler:Lcom/alipay/mobile/common/transportext/amnet/Mercury;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Storage;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->storage:Lcom/alipay/mobile/common/transportext/amnet/Storage;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)J
    .locals 2

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->stampSsl:J

    return-wide v0
.end method

.method static synthetic access$2102(Lcom/alipay/mobile/common/transportext/amnet/Amnet;J)J
    .locals 0

    .prologue
    .line 22
    iput-wide p1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->stampSsl:J

    return-wide p1
.end method

.method static synthetic access$2200(J)D
    .locals 2

    .prologue
    .line 22
    invoke-static {p0, p1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->nsToMs(J)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$2300(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Linkage;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->linkage:Lcom/alipay/mobile/common/transportext/amnet/Linkage;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->safety()V

    return-void
.end method

.method static synthetic access$2500(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->account:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->service:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->importance:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)I
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->getResendCfg()I

    move-result v0

    return v0
.end method

.method static synthetic access$2900(I)J
    .locals 2

    .prologue
    .line 22
    invoke-static {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->sToMs(I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->current:Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/mnet/Plan;Ljava/lang/String;JLcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;)Z
    .locals 1

    .prologue
    .line 22
    invoke-direct/range {p0 .. p5}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->openTimer(Lcom/alipay/mobile/common/transportext/mnet/Plan;Ljava/lang/String;JLcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->primary:Z

    return v0
.end method

.method static synthetic access$3200(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)[Lcom/alipay/mobile/common/transportext/amnet/Amnet$ServerAddr;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->addrLong:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$ServerAddr;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)[Lcom/alipay/mobile/common/transportext/amnet/Amnet$ServerAddr;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->addrShort:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$ServerAddr;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/alipay/mobile/common/transportext/amnet/Amnet;I)I
    .locals 0

    .prologue
    .line 22
    iput p1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->countLink:I

    return p1
.end method

.method static synthetic access$3500(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)[Lcom/alipay/mobile/common/transportext/amnet/Amnet$ServerAddr;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->lsAddr:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$ServerAddr;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->resendable:Z

    return v0
.end method

.method static synthetic access$3602(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Z)Z
    .locals 0

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->resendable:Z

    return p1
.end method

.method static synthetic access$3700(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)I
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->security()I

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->sslLong:I

    return v0
.end method

.method static synthetic access$3802(Lcom/alipay/mobile/common/transportext/amnet/Amnet;I)I
    .locals 0

    .prologue
    .line 22
    iput p1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->sslLong:I

    return p1
.end method

.method static synthetic access$3900(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->bakLong:I

    return v0
.end method

.method static synthetic access$3902(Lcom/alipay/mobile/common/transportext/amnet/Amnet;I)I
    .locals 0

    .prologue
    .line 22
    iput p1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->bakLong:I

    return p1
.end method

.method static synthetic access$400(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->panic(Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->sslShort:I

    return v0
.end method

.method static synthetic access$4002(Lcom/alipay/mobile/common/transportext/amnet/Amnet;I)I
    .locals 0

    .prologue
    .line 22
    iput p1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->sslShort:I

    return p1
.end method

.method static synthetic access$4100(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->bakShort:I

    return v0
.end method

.method static synthetic access$4102(Lcom/alipay/mobile/common/transportext/amnet/Amnet;I)I
    .locals 0

    .prologue
    .line 22
    iput p1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->bakShort:I

    return p1
.end method

.method static synthetic access$4200(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->clean()V

    return-void
.end method

.method static synthetic access$4300(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->initialized:Z

    return v0
.end method

.method static synthetic access$4302(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Z)Z
    .locals 0

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->initialized:Z

    return p1
.end method

.method static synthetic access$4400(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)J
    .locals 2

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->stampNew:J

    return-wide v0
.end method

.method static synthetic access$4500(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Amnet$RetryTmr;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->tmrRetry:Lcom/alipay/mobile/common/transportext/amnet/Amnet$RetryTmr;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->prepare()V

    return-void
.end method

.method static synthetic access$4700(Lcom/alipay/mobile/common/transportext/amnet/Amnet;I)Z
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->control(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4800(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Configuration;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->configure(Lcom/alipay/mobile/common/transportext/amnet/Configuration;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->pending:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Amnet$PeriodTmr;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->tmrPeriod:Lcom/alipay/mobile/common/transportext/amnet/Amnet$PeriodTmr;

    return-object v0
.end method

.method static synthetic access$502(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->actLink:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5102(Lcom/alipay/mobile/common/transportext/amnet/Amnet;I)I
    .locals 0

    .prologue
    .line 22
    iput p1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->countFlash:I

    return p1
.end method

.method static synthetic access$5200(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->unload()V

    return-void
.end method

.method static synthetic access$5300(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Z
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->load()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5400(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Amnet$HoldingTmr;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->tmrHolding:Lcom/alipay/mobile/common/transportext/amnet/Amnet$HoldingTmr;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->detection:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;

    return-object v0
.end method

.method static synthetic access$5502(Lcom/alipay/mobile/common/transportext/amnet/Amnet;[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;)[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->detection:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;

    return-object p1
.end method

.method static synthetic access$5600()[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->explorer:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;

    return-object v0
.end method

.method static synthetic access$5602([Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;)[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;
    .locals 0

    .prologue
    .line 22
    sput-object p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->explorer:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;

    return-object p0
.end method

.method static synthetic access$5700(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Z
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->foreground()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5800(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->nameNet:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->networkCur:I

    return v0
.end method

.method static synthetic access$600(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Z
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->necessary()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6000(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->caLong:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->caShort:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->certLong:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->certShort:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->collect()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6500(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->getIhCfg()Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6600(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->getHbCfg()Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6700(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;J)Z
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->unstable(Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6800(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->prefixIh(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6900(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Ljava/lang/String;Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;Z)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->putIhCfg(Ljava/lang/String;Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/alipay/mobile/common/transportext/amnet/Amnet;ZZ)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->murder(ZZ)V

    return-void
.end method

.method static synthetic access$7200(Ljava/lang/String;Z)Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;
    .locals 1

    .prologue
    .line 22
    invoke-static {p0, p1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->parse(Ljava/lang/String;Z)Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7300(B)Z
    .locals 1

    .prologue
    .line 22
    invoke-static {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->blank(B)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7400(B)Z
    .locals 1

    .prologue
    .line 22
    invoke-static {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->digital(B)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7500(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->practicable:Z

    return v0
.end method

.method static synthetic access$7502(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Z)Z
    .locals 0

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->practicable:Z

    return p1
.end method

.method static synthetic access$7600(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->allowedAct:Z

    return v0
.end method

.method static synthetic access$7700(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->allowedHb:Z

    return v0
.end method

.method static synthetic access$7800(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Configuration$TimeOut;
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->getTimeOutCfg()Lcom/alipay/mobile/common/transportext/amnet/Configuration$TimeOut;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/alipay/mobile/common/transportext/amnet/Amnet;)Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->disused:Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    return-object v0
.end method

.method static synthetic access$802(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;)Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->disused:Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    return-object p1
.end method

.method static synthetic access$900(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->remove(Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;)V

    return-void
.end method

.method private beatHeart()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 6540
    iget-boolean v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->aptotic:Z

    if-eqz v1, :cond_1

    .line 6541
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->getHbCfg()Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;

    move-result-object v1

    .line 6542
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->current:Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    iget v3, v1, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;->interval:I

    iget v1, v1, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;->silence:I

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->openHeartbeat(II)Z

    move-result v1

    if-nez v1, :cond_2

    .line 6551
    :cond_0
    :goto_0
    return v0

    .line 6546
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->current:Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    invoke-interface {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->openIntelligentHb()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6551
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static blank(B)Z
    .locals 1

    .prologue
    .line 6914
    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cfgAddress()V
    .locals 11

    .prologue
    const v10, 0xffff

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 5996
    .line 5997
    const-string/jumbo v0, "/address-list"

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->getInt(Ljava/lang/String;Z)Ljava/lang/Integer;

    move-result-object v0

    .line 5999
    if-eqz v0, :cond_13

    .line 6000
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 6001
    if-gez v0, :cond_0

    move v0, v1

    .line 6006
    :cond_0
    :goto_0
    new-array v5, v0, [Lcom/alipay/mobile/common/transportext/amnet/Configuration$AddrInf;

    move v2, v1

    move v0, v1

    .line 6009
    :goto_1
    array-length v3, v5

    if-ge v2, v3, :cond_10

    .line 6010
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "/address-list/"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 6011
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v7, "/IP"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->getStr(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 6012
    new-instance v7, Lcom/alipay/mobile/common/transportext/amnet/Configuration$AddrInf;

    invoke-direct {v7}, Lcom/alipay/mobile/common/transportext/amnet/Configuration$AddrInf;-><init>()V

    .line 6015
    if-nez v3, :cond_a

    move v3, v1

    .line 6026
    :goto_2
    if-eqz v3, :cond_2

    .line 6027
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/port"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->getInt(Ljava/lang/String;Z)Ljava/lang/Integer;

    move-result-object v8

    .line 6028
    if-eqz v8, :cond_2

    .line 6029
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 6030
    if-ltz v8, :cond_1

    if-le v8, v10, :cond_c

    :cond_1
    move v3, v1

    .line 6040
    :cond_2
    :goto_3
    if-eqz v3, :cond_3

    .line 6041
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/type"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->getInt(Ljava/lang/String;Z)Ljava/lang/Integer;

    move-result-object v8

    .line 6042
    if-eqz v8, :cond_3

    .line 6043
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 6044
    if-eq v8, v4, :cond_d

    const/4 v9, 0x2

    if-eq v8, v9, :cond_d

    move v3, v1

    .line 6054
    :cond_3
    :goto_4
    if-eqz v3, :cond_5

    .line 6055
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/score"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->getInt(Ljava/lang/String;Z)Ljava/lang/Integer;

    move-result-object v8

    .line 6056
    if-eqz v8, :cond_5

    .line 6057
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 6058
    if-ltz v8, :cond_4

    const/16 v9, 0x3e8

    if-le v8, v9, :cond_e

    :cond_4
    move v3, v1

    .line 6068
    :cond_5
    :goto_5
    if-eqz v3, :cond_9

    .line 6069
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v8, "/ACC-IP"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->getStr(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 6070
    if-eqz v3, :cond_6

    .line 6071
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 6072
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    .line 6073
    iput-object v3, v7, Lcom/alipay/mobile/common/transportext/amnet/Configuration$AddrInf;->ipAcc:Ljava/lang/String;

    .line 6077
    :cond_6
    iget-object v3, v7, Lcom/alipay/mobile/common/transportext/amnet/Configuration$AddrInf;->ipAcc:Ljava/lang/String;

    if-eqz v3, :cond_8

    .line 6078
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "/ACC-port"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->getInt(Ljava/lang/String;Z)Ljava/lang/Integer;

    move-result-object v3

    .line 6079
    if-eqz v3, :cond_8

    .line 6080
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 6081
    if-ltz v3, :cond_7

    if-le v3, v10, :cond_f

    .line 6084
    :cond_7
    const/4 v3, 0x0

    iput-object v3, v7, Lcom/alipay/mobile/common/transportext/amnet/Configuration$AddrInf;->ipAcc:Ljava/lang/String;

    .line 6091
    :cond_8
    :goto_6
    aput-object v7, v5, v2

    .line 6092
    add-int/lit8 v0, v0, 0x1

    .line 6009
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 6018
    :cond_a
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 6019
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_b

    move v3, v1

    .line 6020
    goto/16 :goto_2

    .line 6022
    :cond_b
    iput-object v3, v7, Lcom/alipay/mobile/common/transportext/amnet/Configuration$AddrInf;->ip:Ljava/lang/String;

    move v3, v4

    goto/16 :goto_2

    .line 6035
    :cond_c
    iput v8, v7, Lcom/alipay/mobile/common/transportext/amnet/Configuration$AddrInf;->port:I

    goto/16 :goto_3

    .line 6049
    :cond_d
    iput v8, v7, Lcom/alipay/mobile/common/transportext/amnet/Configuration$AddrInf;->type:I

    goto/16 :goto_4

    .line 6063
    :cond_e
    iput v8, v7, Lcom/alipay/mobile/common/transportext/amnet/Configuration$AddrInf;->score:I

    goto :goto_5

    .line 6086
    :cond_f
    iput v3, v7, Lcom/alipay/mobile/common/transportext/amnet/Configuration$AddrInf;->portAcc:I

    goto :goto_6

    .line 6096
    :cond_10
    new-array v3, v0, [Lcom/alipay/mobile/common/transportext/amnet/Configuration$AddrInf;

    move v0, v1

    .line 6099
    :goto_7
    array-length v2, v5

    if-ge v1, v2, :cond_12

    .line 6100
    aget-object v2, v5, v1

    if-eqz v2, :cond_11

    .line 6101
    add-int/lit8 v2, v0, 0x1

    aget-object v4, v5, v1

    aput-object v4, v3, v0

    move v0, v2

    .line 6099
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 6105
    :cond_12
    invoke-direct {p0, v3}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->convert([Lcom/alipay/mobile/common/transportext/amnet/Configuration$AddrInf;)V

    .line 6106
    return-void

    :cond_13
    move v0, v1

    goto/16 :goto_0
.end method

.method private cfgDetect()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/16 v12, 0x64

    const/16 v3, 0x3c

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 6189
    new-instance v5, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Detect;

    invoke-direct {v5}, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Detect;-><init>()V

    .line 6190
    const-string/jumbo v0, "/detect/on"

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->getInt(Ljava/lang/String;Z)Ljava/lang/Integer;

    move-result-object v0

    .line 6193
    if-eqz v0, :cond_0

    .line 6194
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    :goto_0
    iput-boolean v0, v5, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Detect;->on:Z

    .line 6197
    :cond_0
    const-string/jumbo v0, "/detect/sleep"

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->getInt(Ljava/lang/String;Z)Ljava/lang/Integer;

    move-result-object v0

    .line 6198
    if-nez v0, :cond_b

    .line 6199
    iput v3, v5, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Detect;->sleep:I

    .line 6209
    :goto_1
    const-string/jumbo v6, "/detect/information"

    .line 6212
    invoke-direct {p0, v6, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->getInt(Ljava/lang/String;Z)Ljava/lang/Integer;

    move-result-object v0

    .line 6213
    if-eqz v0, :cond_1c

    .line 6214
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 6215
    if-gez v0, :cond_1

    move v0, v2

    .line 6220
    :cond_1
    :goto_2
    new-array v7, v0, [Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;

    move v3, v2

    move v0, v2

    .line 6223
    :goto_3
    array-length v4, v7

    if-ge v3, v4, :cond_19

    .line 6224
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, "/"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 6225
    new-instance v9, Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;

    invoke-direct {v9}, Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;-><init>()V

    .line 6228
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v10, "/domain"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->getStr(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v9, Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;->domain:Ljava/lang/String;

    .line 6229
    iget-object v4, v9, Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;->domain:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 6230
    iget-object v4, v9, Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;->domain:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v9, Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;->domain:Ljava/lang/String;

    .line 6231
    iget-object v4, v9, Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;->domain:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 6232
    iput-object v13, v9, Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;->domain:Ljava/lang/String;

    .line 6236
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v10, "/IP"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->getStr(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v9, Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;->ip:Ljava/lang/String;

    .line 6237
    iget-object v4, v9, Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;->ip:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 6238
    iget-object v4, v9, Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;->ip:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v9, Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;->ip:Ljava/lang/String;

    .line 6239
    iget-object v4, v9, Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;->ip:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 6240
    iput-object v13, v9, Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;->ip:Ljava/lang/String;

    .line 6244
    :cond_3
    iget-object v4, v9, Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;->domain:Ljava/lang/String;

    if-nez v4, :cond_d

    iget-object v4, v9, Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;->ip:Ljava/lang/String;

    if-nez v4, :cond_d

    move v4, v2

    .line 6260
    :goto_4
    if-eqz v4, :cond_4

    .line 6261
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "/protocol"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->getInt(Ljava/lang/String;Z)Ljava/lang/Integer;

    move-result-object v10

    .line 6262
    if-nez v10, :cond_11

    move v4, v2

    .line 6276
    :cond_4
    :goto_5
    if-eqz v4, :cond_6

    .line 6277
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "/request"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->getStr(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;->request:Ljava/lang/String;

    .line 6278
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "/response"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->getStr(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;->response:Ljava/lang/String;

    .line 6279
    iget-object v10, v9, Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;->request:Ljava/lang/String;

    if-eqz v10, :cond_5

    iget-object v10, v9, Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;->response:Ljava/lang/String;

    if-nez v10, :cond_6

    :cond_5
    move v4, v2

    .line 6284
    :cond_6
    if-eqz v4, :cond_7

    .line 6285
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "/waiting"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->getInt(Ljava/lang/String;Z)Ljava/lang/Integer;

    move-result-object v10

    .line 6286
    if-nez v10, :cond_13

    move v4, v2

    .line 6300
    :cond_7
    :goto_6
    if-eqz v4, :cond_8

    .line 6301
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, "/trying"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->getInt(Ljava/lang/String;Z)Ljava/lang/Integer;

    move-result-object v8

    .line 6302
    if-nez v8, :cond_16

    move v4, v2

    .line 6316
    :cond_8
    :goto_7
    if-eqz v4, :cond_9

    .line 6317
    aput-object v9, v7, v3

    .line 6318
    add-int/lit8 v0, v0, 0x1

    .line 6223
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    :cond_a
    move v0, v2

    .line 6194
    goto/16 :goto_0

    .line 6201
    :cond_b
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 6202
    if-ge v0, v3, :cond_c

    .line 6203
    iput v3, v5, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Detect;->sleep:I

    goto/16 :goto_1

    .line 6205
    :cond_c
    iput v0, v5, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Detect;->sleep:I

    goto/16 :goto_1

    .line 6247
    :cond_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v10, "/port"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->getInt(Ljava/lang/String;Z)Ljava/lang/Integer;

    move-result-object v4

    .line 6248
    if-eqz v4, :cond_10

    .line 6249
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 6250
    if-ltz v4, :cond_e

    const v10, 0xffff

    if-le v4, v10, :cond_f

    :cond_e
    move v4, v2

    .line 6253
    goto/16 :goto_4

    .line 6255
    :cond_f
    iput v4, v9, Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;->port:I

    :cond_10
    move v4, v1

    goto/16 :goto_4

    .line 6265
    :cond_11
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 6266
    if-eqz v10, :cond_12

    if-eq v10, v1, :cond_12

    move v4, v2

    .line 6269
    goto/16 :goto_5

    .line 6271
    :cond_12
    iput v10, v9, Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;->protocol:I

    goto/16 :goto_5

    .line 6289
    :cond_13
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 6290
    if-lez v10, :cond_14

    if-le v10, v12, :cond_15

    :cond_14
    move v4, v2

    .line 6293
    goto :goto_6

    .line 6295
    :cond_15
    iput v10, v9, Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;->waiting:I

    goto :goto_6

    .line 6305
    :cond_16
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 6306
    if-ltz v8, :cond_17

    if-le v8, v12, :cond_18

    :cond_17
    move v4, v2

    .line 6309
    goto :goto_7

    .line 6311
    :cond_18
    iput v8, v9, Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;->trying:I

    goto :goto_7

    .line 6322
    :cond_19
    new-array v0, v0, [Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;

    iput-object v0, v5, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Detect;->inf:[Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;

    move v0, v2

    .line 6325
    :goto_8
    array-length v1, v7

    if-ge v2, v1, :cond_1b

    .line 6326
    aget-object v1, v7, v2

    if-eqz v1, :cond_1a

    .line 6327
    iget-object v3, v5, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Detect;->inf:[Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;

    add-int/lit8 v1, v0, 0x1

    aget-object v4, v7, v2

    aput-object v4, v3, v0

    move v0, v1

    .line 6325
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 6331
    :cond_1b
    invoke-direct {p0, v5}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->cfgDetect(Lcom/alipay/mobile/common/transportext/amnet/Configuration$Detect;)V

    .line 6332
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->msToS(J)J

    move-result-wide v0

    iget v2, v5, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Detect;->sleep:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->stampTry:J

    .line 6333
    return-void

    :cond_1c
    move v0, v2

    goto/16 :goto_2
.end method

.method private cfgDetect(Lcom/alipay/mobile/common/transportext/amnet/Configuration$Detect;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 6156
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Detection: on="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p1, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Detect;->on:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", sleep="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Detect;->sleep:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Detect;->inf:[Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6159
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p1, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Detect;->inf:[Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 6160
    iget-object v2, p1, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Detect;->inf:[Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;

    aget-object v2, v2, v0

    .line 6161
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", {"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6162
    iget-object v3, v2, Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;->domain:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 6163
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " domain=\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v2, Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;->domain:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6166
    :cond_0
    iget-object v3, v2, Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;->ip:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 6167
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " IP=\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v2, Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;->ip:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6170
    :cond_1
    iget v3, v2, Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;->port:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 6171
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " port="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v2, Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;->port:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6174
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " protocol="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v1, v2, Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;->protocol:I

    if-ne v1, v5, :cond_3

    const-string/jumbo v1, "SSL"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6176
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " request=\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v2, Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;->request:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6177
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " response=\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v2, Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;->response:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6178
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " waiting="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v2, Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;->waiting:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6179
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " trying="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v2, Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;->trying:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6180
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6159
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 6174
    :cond_3
    const-string/jumbo v1, "TCP"

    goto/16 :goto_1

    .line 6183
    :cond_4
    const-string/jumbo v0, "-AMNET-DETECT-INF"

    invoke-direct {p0, v5, v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->record(ILjava/lang/String;Ljava/lang/String;)V

    .line 6184
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->infTry:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Detect;

    .line 6185
    return-void
.end method

.method private cfgHb(Ljava/lang/String;I)Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;
    .locals 6

    .prologue
    const/16 v2, 0xf

    const/4 v5, 0x1

    const/16 v4, 0xa

    const/16 v1, 0x1d

    .line 5901
    new-instance v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;-><init>()V

    .line 5902
    packed-switch p2, :pswitch_data_0

    .line 5924
    iput v1, v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;->interval:I

    .line 5925
    iput v2, v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;->silence:I

    .line 5930
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/interval"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v5}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->getInt(Ljava/lang/String;Z)Ljava/lang/Integer;

    move-result-object v1

    .line 5931
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/silence"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v5}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->getInt(Ljava/lang/String;Z)Ljava/lang/Integer;

    move-result-object v2

    .line 5933
    if-eqz v1, :cond_0

    .line 5934
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 5935
    if-lt v1, v4, :cond_0

    const/16 v3, 0x294

    if-gt v1, v3, :cond_0

    .line 5938
    iput v1, v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;->interval:I

    .line 5942
    :cond_0
    if-eqz v2, :cond_1

    .line 5943
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 5944
    if-lez v1, :cond_1

    const/16 v2, 0x64

    if-gt v1, v2, :cond_1

    .line 5947
    iput v1, v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;->silence:I

    .line 5951
    :cond_1
    const-string/jumbo v1, "-AMNET-HB-GET"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "={ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;->interval:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;->silence:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " }"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, v1, v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->record(ILjava/lang/String;Ljava/lang/String;)V

    .line 5958
    return-object v0

    .line 5904
    :pswitch_0
    iput v1, v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;->interval:I

    .line 5905
    iput v4, v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;->silence:I

    goto/16 :goto_0

    .line 5908
    :pswitch_1
    iput v1, v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;->interval:I

    .line 5909
    iput v2, v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;->silence:I

    goto/16 :goto_0

    .line 5912
    :pswitch_2
    iput v1, v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;->interval:I

    .line 5913
    iput v2, v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;->silence:I

    goto/16 :goto_0

    .line 5916
    :pswitch_3
    iput v1, v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;->interval:I

    .line 5917
    iput v4, v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;->silence:I

    goto/16 :goto_0

    .line 5920
    :pswitch_4
    iput v1, v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;->interval:I

    .line 5921
    iput v4, v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;->silence:I

    goto/16 :goto_0

    .line 5902
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private cfgHb([Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 5967
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;

    .line 5968
    if-eqz v0, :cond_4

    iget v1, v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;->interval:I

    if-ne v1, v4, :cond_0

    iget v1, v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;->silence:I

    if-eq v1, v4, :cond_4

    .line 5969
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5970
    aget-object v2, p1, p5

    if-nez v2, :cond_1

    .line 5971
    invoke-direct {p0, v1, p5}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->cfgHb(Ljava/lang/String;I)Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;

    move-result-object v2

    aput-object v2, p1, p5

    .line 5974
    :cond_1
    iget v2, v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;->interval:I

    if-eq v2, v4, :cond_2

    .line 5975
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/interval"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;->interval:I

    invoke-direct {p0, v2, v3, v5}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->putInt(Ljava/lang/String;IZ)V

    .line 5976
    aget-object v2, p1, p5

    iget v3, v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;->interval:I

    iput v3, v2, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;->interval:I

    .line 5979
    :cond_2
    iget v2, v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;->silence:I

    if-eq v2, v4, :cond_3

    .line 5980
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/silence"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;->silence:I

    invoke-direct {p0, v2, v3, v5}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->putInt(Ljava/lang/String;IZ)V

    .line 5981
    aget-object v2, p1, p5

    iget v0, v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;->silence:I

    iput v0, v2, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;->silence:I

    .line 5984
    :cond_3
    const-string/jumbo v0, "-AMNET-HB-PUT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "={ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p1, p5

    iget v2, v2, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;->interval:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p1, p5

    iget v2, v2, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;->silence:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v5, v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->record(ILjava/lang/String;Ljava/lang/String;)V

    .line 5992
    :cond_4
    return-void
.end method

.method private cfgIh(Ljava/lang/String;)Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 6376
    new-instance v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet$1;)V

    .line 6377
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/using"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v5}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->getInt(Ljava/lang/String;Z)Ljava/lang/Integer;

    move-result-object v1

    .line 6378
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/stamp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v5}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->getBig(Ljava/lang/String;Z)Ljava/lang/Long;

    move-result-object v2

    .line 6380
    if-eqz v1, :cond_0

    .line 6381
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 6382
    const/16 v3, 0x14

    if-lt v1, v3, :cond_0

    const/16 v3, 0x4b0

    if-gt v1, v3, :cond_0

    .line 6383
    iput v1, v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;->using:I

    .line 6387
    :cond_0
    if-eqz v2, :cond_1

    .line 6388
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;->stamp:J

    .line 6391
    :cond_1
    const-string/jumbo v1, "-AMNET-IH-GET"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "={ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;->using:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;->stamp:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " }"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, v1, v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->record(ILjava/lang/String;Ljava/lang/String;)V

    .line 6398
    return-object v0
.end method

.method private cfgReconnect()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v1, 0x0

    .line 6110
    .line 6111
    const-string/jumbo v0, "/reconnect"

    invoke-direct {p0, v0, v7}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->getInt(Ljava/lang/String;Z)Ljava/lang/Integer;

    move-result-object v0

    .line 6113
    if-eqz v0, :cond_5

    .line 6114
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 6115
    if-gez v0, :cond_0

    move v0, v1

    .line 6120
    :cond_0
    :goto_0
    new-array v3, v0, [I

    move v2, v1

    move v0, v1

    .line 6123
    :goto_1
    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 6124
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "/reconnect/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 6125
    invoke-direct {p0, v4, v7}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->getInt(Ljava/lang/String;Z)Ljava/lang/Integer;

    move-result-object v4

    .line 6126
    if-eqz v4, :cond_1

    .line 6127
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 6130
    if-ltz v4, :cond_1

    const/16 v5, 0x3e8

    if-gt v4, v5, :cond_1

    .line 6133
    aput v4, v3, v2

    .line 6134
    add-int/lit8 v0, v0, 0x1

    .line 6123
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 6136
    :cond_1
    aput v6, v3, v2

    goto :goto_2

    .line 6142
    :cond_2
    new-array v4, v0, [I

    move v0, v1

    .line 6145
    :goto_3
    array-length v2, v3

    if-ge v1, v2, :cond_4

    .line 6146
    aget v2, v3, v1

    if-eq v2, v6, :cond_3

    .line 6147
    add-int/lit8 v2, v0, 0x1

    aget v5, v3, v1

    aput v5, v4, v0

    move v0, v2

    .line 6145
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 6151
    :cond_4
    invoke-direct {p0, v4}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->getReconnectCfg([I)V

    .line 6152
    return-void

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method private cfgResend(Ljava/lang/String;I)I
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 6338
    const/16 v1, 0xa

    .line 6341
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "/resending"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6342
    invoke-direct {p0, v2, v4}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->getInt(Ljava/lang/String;Z)Ljava/lang/Integer;

    move-result-object v0

    .line 6344
    if-eqz v0, :cond_0

    .line 6345
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 6346
    if-lez v0, :cond_0

    const/16 v3, 0x2d

    if-gt v0, v3, :cond_0

    .line 6353
    :goto_0
    const-string/jumbo v1, "-AMNET-RSND-GET"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v4, v1, v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->record(ILjava/lang/String;Ljava/lang/String;)V

    .line 6356
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private cfgResend(Ljava/util/Map;Ljava/lang/String;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 6361
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 6362
    if-eqz v0, :cond_0

    .line 6363
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 6364
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "/resending"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6366
    invoke-direct {p0, v1, v0, v4}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->putInt(Ljava/lang/String;IZ)V

    .line 6367
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->tmCfrm:[I

    aput v0, v2, p3

    .line 6368
    const-string/jumbo v2, "-AMNET-RSND-PUT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v4, v2, v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->record(ILjava/lang/String;Ljava/lang/String;)V

    .line 6372
    :cond_0
    return-void
.end method

.method private cfgTimeOut(Ljava/lang/String;I)Lcom/alipay/mobile/common/transportext/amnet/Configuration$TimeOut;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/16 v4, 0x1e

    const/16 v3, 0xf

    const/16 v2, 0xa

    const/4 v1, 0x5

    .line 5821
    new-instance v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$TimeOut;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transportext/amnet/Configuration$TimeOut;-><init>()V

    .line 5822
    packed-switch p2, :pswitch_data_0

    .line 5844
    iput v3, v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$TimeOut;->connect:I

    .line 5845
    iput v4, v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$TimeOut;->handshake:I

    .line 5850
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "/time-out"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5851
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/connect"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v5}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->getInt(Ljava/lang/String;Z)Ljava/lang/Integer;

    move-result-object v2

    .line 5852
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "/handshake"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v5}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->getInt(Ljava/lang/String;Z)Ljava/lang/Integer;

    move-result-object v1

    .line 5854
    if-eqz v2, :cond_0

    .line 5855
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 5856
    if-lez v2, :cond_0

    const/16 v3, 0x64

    if-gt v2, v3, :cond_0

    .line 5859
    iput v2, v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$TimeOut;->connect:I

    .line 5863
    :cond_0
    if-eqz v1, :cond_1

    .line 5864
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 5865
    if-lez v1, :cond_1

    const/16 v2, 0x64

    if-gt v1, v2, :cond_1

    .line 5868
    iput v1, v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$TimeOut;->handshake:I

    .line 5872
    :cond_1
    return-object v0

    .line 5824
    :pswitch_0
    iput v1, v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$TimeOut;->connect:I

    .line 5825
    iput v2, v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$TimeOut;->handshake:I

    goto :goto_0

    .line 5828
    :pswitch_1
    iput v3, v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$TimeOut;->connect:I

    .line 5829
    iput v4, v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$TimeOut;->handshake:I

    goto :goto_0

    .line 5832
    :pswitch_2
    iput v3, v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$TimeOut;->connect:I

    .line 5833
    iput v4, v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$TimeOut;->handshake:I

    goto :goto_0

    .line 5836
    :pswitch_3
    iput v1, v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$TimeOut;->connect:I

    .line 5837
    iput v2, v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$TimeOut;->handshake:I

    goto :goto_0

    .line 5840
    :pswitch_4
    iput v1, v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$TimeOut;->connect:I

    .line 5841
    iput v2, v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$TimeOut;->handshake:I

    goto :goto_0

    .line 5822
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private cfgTimeOut(Ljava/util/Map;Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/alipay/mobile/common/transportext/amnet/Configuration$TimeOut;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 5879
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$TimeOut;

    .line 5880
    if-eqz v0, :cond_3

    iget v1, v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$TimeOut;->connect:I

    if-ne v1, v4, :cond_0

    iget v1, v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$TimeOut;->handshake:I

    if-eq v1, v4, :cond_3

    .line 5881
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->tmLink:[Lcom/alipay/mobile/common/transportext/amnet/Configuration$TimeOut;

    aget-object v1, v1, p3

    if-nez v1, :cond_1

    .line 5882
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->tmLink:[Lcom/alipay/mobile/common/transportext/amnet/Configuration$TimeOut;

    invoke-direct {p0, p2, p3}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->cfgTimeOut(Ljava/lang/String;I)Lcom/alipay/mobile/common/transportext/amnet/Configuration$TimeOut;

    move-result-object v2

    aput-object v2, v1, p3

    .line 5885
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "/time-out"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5886
    iget v2, v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$TimeOut;->connect:I

    if-eq v2, v4, :cond_2

    .line 5887
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/connect"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$TimeOut;->connect:I

    invoke-direct {p0, v2, v3, v5}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->putInt(Ljava/lang/String;IZ)V

    .line 5888
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->tmLink:[Lcom/alipay/mobile/common/transportext/amnet/Configuration$TimeOut;

    aget-object v2, v2, p3

    iget v3, v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$TimeOut;->connect:I

    iput v3, v2, Lcom/alipay/mobile/common/transportext/amnet/Configuration$TimeOut;->connect:I

    .line 5891
    :cond_2
    iget v2, v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$TimeOut;->handshake:I

    if-eq v2, v4, :cond_3

    .line 5892
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/handshake"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$TimeOut;->handshake:I

    invoke-direct {p0, v1, v2, v5}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->putInt(Ljava/lang/String;IZ)V

    .line 5893
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->tmLink:[Lcom/alipay/mobile/common/transportext/amnet/Configuration$TimeOut;

    aget-object v1, v1, p3

    iget v0, v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$TimeOut;->handshake:I

    iput v0, v1, Lcom/alipay/mobile/common/transportext/amnet/Configuration$TimeOut;->handshake:I

    .line 5896
    :cond_3
    return-void
.end method

.method private change(I)V
    .locals 1

    .prologue
    .line 5079
    iput p1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->stateCur:I

    .line 5080
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->linkage:Lcom/alipay/mobile/common/transportext/amnet/Linkage;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/common/transportext/amnet/Linkage;->change(I)V

    .line 5081
    return-void
.end method

.method private clean()V
    .locals 2

    .prologue
    .line 6458
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->importance:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6459
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->importance:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Data;

    .line 6460
    const-string/jumbo v1, "data-package"

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->closeTimer(Lcom/alipay/mobile/common/transportext/mnet/Plan;Ljava/lang/String;)V

    .line 6461
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->importance:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6462
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->importance:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    .line 6465
    :cond_0
    return-void
.end method

.method private clear()V
    .locals 3

    .prologue
    .line 6469
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->clean()V

    .line 6470
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->pending:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6471
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->pending:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Data;

    .line 6472
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->service:Ljava/util/Map;

    iget-byte v2, v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Data;->channel:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/common/transportext/amnet/Channel;

    .line 6474
    const-string/jumbo v2, "data-package"

    invoke-direct {p0, v0, v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->closeTimer(Lcom/alipay/mobile/common/transportext/mnet/Plan;Ljava/lang/String;)V

    .line 6475
    if-eqz v1, :cond_0

    .line 6476
    iget-object v2, v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Data;->header:Ljava/util/Map;

    iget-object v0, v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Data;->body:[B

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/transportext/amnet/Channel;->recycle(Ljava/util/Map;[B)V

    goto :goto_0

    .line 6480
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->disused:Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    if-eqz v0, :cond_2

    .line 6481
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->disused:Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    invoke-interface {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->stop()V

    .line 6482
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->disused:Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    .line 6484
    :cond_2
    return-void
.end method

.method private closeTimer(Lcom/alipay/mobile/common/transportext/mnet/Plan;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 6511
    const/16 v2, 0x64

    move v3, v2

    move v2, v0

    .line 6515
    :goto_0
    add-int/lit8 v4, v3, -0x1

    if-eqz v3, :cond_1

    .line 6516
    invoke-virtual {p1}, Lcom/alipay/mobile/common/transportext/mnet/Plan;->close()I

    move-result v3

    .line 6517
    if-eqz v3, :cond_1

    .line 6518
    const/4 v5, 0x3

    if-ne v3, v5, :cond_0

    move v2, v1

    move v3, v4

    .line 6520
    goto :goto_0

    :cond_0
    move v0, v1

    move v3, v4

    .line 6524
    goto :goto_0

    .line 6526
    :cond_1
    if-gez v4, :cond_3

    .line 6527
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Can not close the "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "-timer."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6528
    if-eqz v2, :cond_2

    .line 6529
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->linkage:Lcom/alipay/mobile/common/transportext/amnet/Linkage;

    const/4 v3, 0x5

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/transportext/amnet/Linkage;->panic(ILjava/lang/String;)V

    .line 6532
    :cond_2
    if-eqz v0, :cond_3

    .line 6533
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->linkage:Lcom/alipay/mobile/common/transportext/amnet/Linkage;

    const/4 v2, 0x4

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/transportext/amnet/Linkage;->panic(ILjava/lang/String;)V

    .line 6536
    :cond_3
    return-void
.end method

.method private collect()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Byte;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 5085
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    .line 5087
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->linkage:Lcom/alipay/mobile/common/transportext/amnet/Linkage;

    invoke-interface {v0, v3}, Lcom/alipay/mobile/common/transportext/amnet/Linkage;->collect(Ljava/util/Map;)V

    .line 5089
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 5090
    if-nez v0, :cond_0

    .line 5091
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 5092
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5095
    :cond_0
    const-string/jumbo v1, "added:"

    .line 5097
    const-string/jumbo v2, "/version"

    invoke-direct {p0, v2, v6}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->getInt(Ljava/lang/String;Z)Ljava/lang/Integer;

    move-result-object v2

    .line 5098
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ltz v4, :cond_1

    .line 5099
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 5100
    const-string/jumbo v4, "{SETTING-VERSION}"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5101
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " setting-version="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5104
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->nameNet:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 5106
    iget v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->networkCur:I

    packed-switch v2, :pswitch_data_0

    .line 5123
    const-string/jumbo v2, "other"

    .line 5127
    :goto_0
    const-string/jumbo v4, "{NETWORK}"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5128
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " network=\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5131
    :cond_2
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->foreground()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "1"

    .line 5132
    :goto_1
    const-string/jumbo v4, "{GROUND}"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5133
    const-string/jumbo v4, "{LINK-ACTION}"

    iget-object v5, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->actLink:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5134
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " ground="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " link-action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->actLink:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5136
    iput v6, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->seqCur:I

    .line 5137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->stampSeq:J

    .line 5138
    iget-wide v4, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->stampSeq:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 5139
    const-string/jumbo v4, "{NOW}"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5140
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " current-time="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5142
    iget-boolean v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->resendable:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    .line 5143
    const-string/jumbo v4, "{RESEND}"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " resend="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5146
    const-string/jumbo v1, "-AMNET-INIT"

    invoke-direct {p0, v6, v1, v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->record(ILjava/lang/String;Ljava/lang/String;)V

    .line 5147
    return-object v3

    .line 5108
    :pswitch_0
    const-string/jumbo v2, "wifi"

    goto/16 :goto_0

    .line 5111
    :pswitch_1
    const-string/jumbo v2, "g2wap"

    goto/16 :goto_0

    .line 5114
    :pswitch_2
    const-string/jumbo v2, "g2net"

    goto/16 :goto_0

    .line 5117
    :pswitch_3
    const-string/jumbo v2, "g3"

    goto/16 :goto_0

    .line 5120
    :pswitch_4
    const-string/jumbo v2, "g4"

    goto/16 :goto_0

    .line 5131
    :cond_3
    const-string/jumbo v2, "2"

    goto/16 :goto_1

    .line 5106
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private configure(Lcom/alipay/mobile/common/transportext/amnet/Configuration;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 5152
    iget-object v0, p1, Lcom/alipay/mobile/common/transportext/amnet/Configuration;->duration:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 5153
    iget-object v0, p1, Lcom/alipay/mobile/common/transportext/amnet/Configuration;->duration:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->putTimeOutCfg(Ljava/util/Map;)V

    .line 5157
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobile/common/transportext/amnet/Configuration;->hbFore:Ljava/util/Map;

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/alipay/mobile/common/transportext/amnet/Configuration;->hbBack:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 5158
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->stampCfg:J

    .line 5159
    const-string/jumbo v0, "/cfg-heartbeat"

    iget-wide v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->stampCfg:J

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->putBig(Ljava/lang/String;JZ)V

    .line 5162
    :cond_2
    const/4 v0, 0x0

    .line 5163
    iget-object v2, p1, Lcom/alipay/mobile/common/transportext/amnet/Configuration;->hbFore:Ljava/util/Map;

    if-eqz v2, :cond_3

    .line 5164
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->hbFore:[Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;

    iget-object v3, p1, Lcom/alipay/mobile/common/transportext/amnet/Configuration;->hbFore:Ljava/util/Map;

    const-string/jumbo v4, "/foreground"

    invoke-direct {p0, v2, v3, v4}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->putHbCfg([Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;Ljava/util/Map;Ljava/lang/String;)V

    .line 5165
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->foreground()Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    .line 5170
    :cond_3
    iget-object v2, p1, Lcom/alipay/mobile/common/transportext/amnet/Configuration;->hbBack:Ljava/util/Map;

    if-eqz v2, :cond_4

    .line 5171
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->hbBack:[Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;

    iget-object v3, p1, Lcom/alipay/mobile/common/transportext/amnet/Configuration;->hbBack:Ljava/util/Map;

    const-string/jumbo v4, "/background"

    invoke-direct {p0, v2, v3, v4}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->putHbCfg([Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;Ljava/util/Map;Ljava/lang/String;)V

    .line 5172
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->foreground()Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 5177
    :cond_4
    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->allowedHb:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->aptotic:Z

    if-eqz v0, :cond_5

    .line 5178
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->getHbCfg()Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;

    move-result-object v0

    .line 5179
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->current:Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    iget v3, v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;->interval:I

    iget v4, v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;->silence:I

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->openHeartbeat(II)Z

    move-result v2

    if-nez v2, :cond_5

    .line 5180
    const/4 v2, 0x2

    const-string/jumbo v3, "-AMNET-HB"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Can not refresh heartbeat. (interval="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;->interval:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v0, v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;->silence:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v3, v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->record(ILjava/lang/String;Ljava/lang/String;)V

    .line 5190
    :cond_5
    iget-object v0, p1, Lcom/alipay/mobile/common/transportext/amnet/Configuration;->address:[Lcom/alipay/mobile/common/transportext/amnet/Configuration$AddrInf;

    if-eqz v0, :cond_6

    .line 5191
    iget-object v0, p1, Lcom/alipay/mobile/common/transportext/amnet/Configuration;->address:[Lcom/alipay/mobile/common/transportext/amnet/Configuration$AddrInf;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->putAddressCfg([Lcom/alipay/mobile/common/transportext/amnet/Configuration$AddrInf;)V

    .line 5194
    :cond_6
    iget-object v0, p1, Lcom/alipay/mobile/common/transportext/amnet/Configuration;->reconnect:[I

    if-eqz v0, :cond_7

    .line 5195
    iget-object v0, p1, Lcom/alipay/mobile/common/transportext/amnet/Configuration;->reconnect:[I

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->putReconnectCfg([I)V

    .line 5198
    :cond_7
    iget-object v0, p1, Lcom/alipay/mobile/common/transportext/amnet/Configuration;->flash:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Flash;

    if-eqz v0, :cond_8

    .line 5199
    iget-object v0, p1, Lcom/alipay/mobile/common/transportext/amnet/Configuration;->flash:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Flash;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->putFlashCfg(Lcom/alipay/mobile/common/transportext/amnet/Configuration$Flash;)V

    .line 5202
    :cond_8
    iget-object v0, p1, Lcom/alipay/mobile/common/transportext/amnet/Configuration;->misc:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Misc;

    if-eqz v0, :cond_9

    .line 5203
    iget-object v0, p1, Lcom/alipay/mobile/common/transportext/amnet/Configuration;->misc:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Misc;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->putMiscCfg(Lcom/alipay/mobile/common/transportext/amnet/Configuration$Misc;)V

    .line 5206
    :cond_9
    iget-object v0, p1, Lcom/alipay/mobile/common/transportext/amnet/Configuration;->detect:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Detect;

    if-eqz v0, :cond_a

    .line 5207
    iget-object v0, p1, Lcom/alipay/mobile/common/transportext/amnet/Configuration;->detect:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Detect;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->putDetectCfg(Lcom/alipay/mobile/common/transportext/amnet/Configuration$Detect;)V

    .line 5210
    :cond_a
    iget-object v0, p1, Lcom/alipay/mobile/common/transportext/amnet/Configuration;->resend:Ljava/util/Map;

    if-eqz v0, :cond_b

    .line 5211
    iget-object v0, p1, Lcom/alipay/mobile/common/transportext/amnet/Configuration;->resend:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->putResendCfg(Ljava/util/Map;)V

    .line 5214
    :cond_b
    iget v0, p1, Lcom/alipay/mobile/common/transportext/amnet/Configuration;->version:I

    if-ltz v0, :cond_c

    .line 5215
    const-string/jumbo v0, "/version"

    iget v2, p1, Lcom/alipay/mobile/common/transportext/amnet/Configuration;->version:I

    invoke-direct {p0, v0, v2, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->putInt(Ljava/lang/String;IZ)V

    .line 5217
    :cond_c
    return-void
.end method

.method private control(I)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 5379
    if-nez p1, :cond_2

    .line 5380
    const-string/jumbo v2, "-AMNET-CTL"

    const-string/jumbo v3, "I shall break the link at once."

    invoke-direct {p0, v1, v2, v3}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->record(ILjava/lang/String;Ljava/lang/String;)V

    .line 5383
    const-string/jumbo v2, "3"

    iput-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->actLink:Ljava/lang/String;

    .line 5384
    invoke-direct {p0, v0, v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->murder(ZZ)V

    :cond_0
    :goto_0
    move v0, v1

    .line 5406
    :cond_1
    :goto_1
    return v0

    .line 5385
    :cond_2
    if-ne p1, v1, :cond_4

    .line 5386
    const-string/jumbo v2, "-AMNET-CTL"

    const-string/jumbo v3, "I shall keep silent."

    invoke-direct {p0, v1, v2, v3}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->record(ILjava/lang/String;Ljava/lang/String;)V

    .line 5387
    iget-boolean v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->allowedHb:Z

    if-eqz v2, :cond_0

    .line 5388
    iget-boolean v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->aptotic:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->current:Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    invoke-interface {v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->closeHeartbeat()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5391
    :goto_2
    iput-boolean v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->allowedHb:Z

    goto :goto_0

    .line 5388
    :cond_3
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->current:Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    invoke-interface {v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->closeIntelligentHb()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    .line 5396
    :cond_4
    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 5397
    const-string/jumbo v2, "-AMNET-CTL"

    const-string/jumbo v3, "I shall keep alive."

    invoke-direct {p0, v1, v2, v3}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->record(ILjava/lang/String;Ljava/lang/String;)V

    .line 5398
    iget-boolean v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->allowedHb:Z

    if-nez v2, :cond_0

    .line 5399
    iput-boolean v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->allowedHb:Z

    .line 5400
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->beatHeart()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1
.end method

.method private convert([Lcom/alipay/mobile/common/transportext/amnet/Configuration$AddrInf;)V
    .locals 12

    .prologue
    .line 5221
    const-wide/16 v2, 0x0

    .line 5222
    const/4 v1, 0x0

    .line 5224
    const/4 v0, 0x0

    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_2

    .line 5225
    aget-object v4, p1, v0

    .line 5226
    iget v5, v4, Lcom/alipay/mobile/common/transportext/amnet/Configuration$AddrInf;->type:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 5227
    iget v5, v4, Lcom/alipay/mobile/common/transportext/amnet/Configuration$AddrInf;->score:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    const-wide/16 v4, 0x0

    :goto_1
    add-long/2addr v2, v4

    .line 5228
    add-int/lit8 v1, v1, 0x1

    .line 5224
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5227
    :cond_1
    iget v4, v4, Lcom/alipay/mobile/common/transportext/amnet/Configuration$AddrInf;->score:I

    int-to-long v4, v4

    goto :goto_1

    .line 5232
    :cond_2
    if-nez v1, :cond_3

    .line 5233
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->lsAddr:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$ServerAddr;

    .line 5234
    const/4 v0, 0x1

    const-string/jumbo v1, "-AMNET-ADDR-LIST"

    const-string/jumbo v2, "The address-list is cleared."

    invoke-direct {p0, v0, v1, v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->record(ILjava/lang/String;Ljava/lang/String;)V

    .line 5295
    :goto_2
    return-void

    .line 5238
    :cond_3
    mul-int/lit8 v0, v1, 0x5

    int-to-long v4, v0

    .line 5239
    new-array v0, v1, [Lcom/alipay/mobile/common/transportext/amnet/Amnet$ServerAddr;

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->lsAddr:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$ServerAddr;

    .line 5240
    int-to-long v0, v1

    add-long v6, v2, v0

    .line 5241
    const/4 v1, 0x0

    .line 5243
    const/4 v0, 0x0

    :goto_3
    array-length v2, p1

    if-ge v0, v2, :cond_8

    .line 5244
    aget-object v2, p1, v0

    .line 5245
    iget v3, v2, Lcom/alipay/mobile/common/transportext/amnet/Configuration$AddrInf;->type:I

    const/4 v8, 0x1

    if-ne v3, v8, :cond_7

    .line 5246
    new-instance v8, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ServerAddr;

    const/4 v3, 0x0

    invoke-direct {v8, v3}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ServerAddr;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet$1;)V

    .line 5247
    iget-object v3, v2, Lcom/alipay/mobile/common/transportext/amnet/Configuration$AddrInf;->ip:Ljava/lang/String;

    iput-object v3, v8, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ServerAddr;->ip:Ljava/lang/String;

    .line 5248
    iget v3, v2, Lcom/alipay/mobile/common/transportext/amnet/Configuration$AddrInf;->port:I

    iput v3, v8, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ServerAddr;->port:I

    .line 5249
    iget v3, v2, Lcom/alipay/mobile/common/transportext/amnet/Configuration$AddrInf;->score:I

    const/4 v9, -0x1

    if-ne v3, v9, :cond_4

    const/4 v2, 0x0

    :goto_4
    iput v2, v8, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ServerAddr;->score:I

    .line 5250
    iget v2, v8, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ServerAddr;->score:I

    int-to-long v2, v2

    const-wide/16 v9, 0x1

    add-long/2addr v2, v9

    mul-long/2addr v2, v4

    div-long/2addr v2, v6

    long-to-int v2, v2

    iput v2, v8, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ServerAddr;->limit:I

    .line 5251
    const/4 v2, 0x0

    iput v2, v8, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ServerAddr;->count:I

    .line 5254
    const/4 v2, 0x0

    move v3, v2

    .line 5255
    :goto_5
    if-ge v3, v1, :cond_5

    .line 5256
    iget v2, v8, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ServerAddr;->score:I

    iget-object v9, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->lsAddr:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$ServerAddr;

    aget-object v9, v9, v3

    iget v9, v9, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ServerAddr;->score:I

    if-lt v2, v9, :cond_5

    .line 5257
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_5

    .line 5249
    :cond_4
    iget v2, v2, Lcom/alipay/mobile/common/transportext/amnet/Configuration$AddrInf;->score:I

    goto :goto_4

    .line 5262
    :cond_5
    add-int/lit8 v2, v1, 0x1

    :goto_6
    if-le v1, v3, :cond_6

    .line 5263
    iget-object v9, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->lsAddr:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$ServerAddr;

    iget-object v10, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->lsAddr:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$ServerAddr;

    add-int/lit8 v11, v1, -0x1

    aget-object v10, v10, v11

    aput-object v10, v9, v1

    .line 5262
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 5267
    :cond_6
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->lsAddr:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$ServerAddr;

    aput-object v8, v1, v3

    move v1, v2

    .line 5243
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 5271
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "The address-list length is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->lsAddr:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$ServerAddr;

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5274
    const/4 v1, 0x0

    :goto_7
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->lsAddr:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$ServerAddr;

    array-length v2, v2

    if-ge v1, v2, :cond_b

    .line 5275
    if-eqz v1, :cond_9

    .line 5276
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5279
    :cond_9
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->lsAddr:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$ServerAddr;

    aget-object v2, v2, v1

    .line 5280
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v2, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ServerAddr;->ip:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5281
    iget v3, v2, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ServerAddr;->port:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_a

    .line 5282
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, v2, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ServerAddr;->port:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5285
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, v2, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ServerAddr;->score:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v2, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ServerAddr;->limit:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5274
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_7

    .line 5292
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5293
    const/4 v1, 0x1

    const-string/jumbo v2, "-AMNET-ADDR-LIST"

    invoke-direct {p0, v1, v2, v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->record(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private static defaultPort(Z)I
    .locals 1

    .prologue
    .line 6829
    if-eqz p0, :cond_0

    const/16 v0, 0x1bb

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x50

    goto :goto_0
.end method

.method private static digital(B)Z
    .locals 1

    .prologue
    .line 6909
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private dominate(Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    .prologue
    .line 4911
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 4912
    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->disused:Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    if-eqz v3, :cond_0

    .line 4913
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->drop()V

    .line 4916
    :cond_0
    invoke-interface {p1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->getTouchingRpt()Lcom/alipay/mobile/common/transportext/amnet/Linkage$Touching;

    move-result-object v3

    .line 4917
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Touching;->yesLnk:Z

    .line 4918
    move-object/from16 v0, p4

    iput-object v0, v3, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Touching;->ipLocal:Ljava/lang/String;

    .line 4919
    move-object/from16 v0, p5

    iput-object v0, v3, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Touching;->ipRemote:Ljava/lang/String;

    .line 4920
    move-object/from16 v0, p6

    iput-object v0, v3, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Touching;->portLocal:Ljava/lang/String;

    .line 4921
    move-object/from16 v0, p7

    iput-object v0, v3, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Touching;->portRemote:Ljava/lang/String;

    .line 4923
    invoke-interface {p1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->getActStamp()J

    move-result-wide v4

    .line 4924
    invoke-interface {p1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->getDnsStamp()J

    move-result-wide v6

    .line 4925
    sub-long v8, v1, v6

    invoke-static {v8, v9}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->nsToMs(J)D

    move-result-wide v8

    .line 4927
    sub-long v4, v6, v4

    invoke-static {v4, v5}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->nsToMs(J)D

    move-result-wide v4

    iput-wide v4, v3, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Touching;->msDns:D

    .line 4928
    sub-long v4, p2, v6

    invoke-static {v4, v5}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->nsToMs(J)D

    move-result-wide v4

    iput-wide v4, v3, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Touching;->msTcp:D

    .line 4929
    iget-wide v4, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->stampNew:J

    sub-long/2addr v1, v4

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->nsToMs(J)D

    move-result-wide v1

    iput-wide v1, v3, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Touching;->msAttempt:D

    .line 4930
    iget v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->countLoad:I

    iput v1, v3, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Touching;->cntAttempt:I

    .line 4932
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->linkage:Lcom/alipay/mobile/common/transportext/amnet/Linkage;

    const-string/jumbo v2, "DNS"

    iget-wide v4, v3, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Touching;->msDns:D

    invoke-interface {v1, v2, v4, v5}, Lcom/alipay/mobile/common/transportext/amnet/Linkage;->report(Ljava/lang/String;D)V

    .line 4933
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->linkage:Lcom/alipay/mobile/common/transportext/amnet/Linkage;

    const-string/jumbo v2, "native TCP connect"

    sub-long v4, p2, v6

    invoke-static {v4, v5}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->nsToMs(J)D

    move-result-wide v4

    invoke-interface {v1, v2, v4, v5}, Lcom/alipay/mobile/common/transportext/amnet/Linkage;->report(Ljava/lang/String;D)V

    .line 4934
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->linkage:Lcom/alipay/mobile/common/transportext/amnet/Linkage;

    const-string/jumbo v2, "JVM TCP connect"

    invoke-interface {v1, v2, v8, v9}, Lcom/alipay/mobile/common/transportext/amnet/Linkage;->report(Ljava/lang/String;D)V

    .line 4935
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->linkage:Lcom/alipay/mobile/common/transportext/amnet/Linkage;

    const-string/jumbo v2, "attempt duration"

    iget-wide v4, v3, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Touching;->msAttempt:D

    invoke-interface {v1, v2, v4, v5}, Lcom/alipay/mobile/common/transportext/amnet/Linkage;->report(Ljava/lang/String;D)V

    .line 4936
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->linkage:Lcom/alipay/mobile/common/transportext/amnet/Linkage;

    const-string/jumbo v2, "attempt count"

    iget v4, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->countLoad:I

    int-to-double v4, v4

    invoke-interface {v1, v2, v4, v5}, Lcom/alipay/mobile/common/transportext/amnet/Linkage;->report(Ljava/lang/String;D)V

    .line 4938
    const/4 v2, 0x1

    const-string/jumbo v4, "-AMNET-LINK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "The DNS takes "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v10, v3, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Touching;->msDns:D

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, " ms. The native TCP connecting takes "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-long v5, p2, v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->nsToMs(J)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, " ms. The JAVA TCP connecting takes "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, " ms. The attempt of connecting takes "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v5, v3, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Touching;->msAttempt:D

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, " ms and "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->countLoad:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->countLoad:I

    const/4 v6, 0x1

    if-le v1, v6, :cond_2

    const-string/jumbo v1, " times."

    :goto_0
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v4, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->record(ILjava/lang/String;Ljava/lang/String;)V

    .line 4950
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->linkage:Lcom/alipay/mobile/common/transportext/amnet/Linkage;

    invoke-interface {v1, v3}, Lcom/alipay/mobile/common/transportext/amnet/Linkage;->touch(Lcom/alipay/mobile/common/transportext/amnet/Linkage$Touching;)V

    .line 4951
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->sendable:Z

    .line 4952
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->initialized:Z

    .line 4953
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->current:Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    .line 4954
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->renewed:Z

    .line 4955
    const/4 v1, 0x0

    iput v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->countLoad:I

    .line 4957
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->candidate:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    array-length v1, v1

    .line 4958
    :goto_1
    add-int/lit8 v2, v1, -0x1

    if-eqz v1, :cond_3

    .line 4959
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->candidate:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    aget-object v1, v1, v2

    .line 4960
    if-eqz v1, :cond_1

    .line 4961
    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->candidate:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    const/4 v4, 0x0

    aput-object v4, v3, v2

    .line 4962
    if-eq v1, p1, :cond_1

    .line 4963
    invoke-interface {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->stop()V

    :cond_1
    move v1, v2

    .line 4966
    goto :goto_1

    .line 4938
    :cond_2
    const-string/jumbo v1, " time."

    goto :goto_0

    .line 4968
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->candidate:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    .line 4969
    iput-wide p2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->stampLnk:J

    .line 4970
    const/4 v1, -0x1

    iput v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->waitCur:I

    .line 4971
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->tmrHolding:Lcom/alipay/mobile/common/transportext/amnet/Amnet$HoldingTmr;

    const-string/jumbo v3, "link-holding"

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->valBrk:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Flash;

    iget v1, v1, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Flash;->holding:I

    int-to-long v4, v1

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->openTimer(Lcom/alipay/mobile/common/transportext/mnet/Plan;Ljava/lang/String;JLcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;)Z

    .line 4972
    return-void
.end method

.method private drop()V
    .locals 6

    .prologue
    .line 4635
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->initialized:Z

    if-eqz v0, :cond_0

    .line 4636
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->disused:Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    invoke-interface {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->getSeparatingRpt()Lcom/alipay/mobile/common/transportext/amnet/Linkage$Separating;

    move-result-object v0

    .line 4637
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->stampLnk:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->nsToMs(J)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Separating;->msLife:D

    .line 4638
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->linkage:Lcom/alipay/mobile/common/transportext/amnet/Linkage;

    const-string/jumbo v2, "link life"

    iget-wide v3, v0, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Separating;->msLife:D

    invoke-interface {v1, v2, v3, v4}, Lcom/alipay/mobile/common/transportext/amnet/Linkage;->report(Ljava/lang/String;D)V

    .line 4639
    const/4 v1, 0x1

    const-string/jumbo v2, "-AMNET-LINK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "The connection lasts "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v0, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Separating;->msLife:D

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " ms."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->record(ILjava/lang/String;Ljava/lang/String;)V

    .line 4644
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->disused:Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    invoke-interface {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->stop()V

    .line 4645
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->disused:Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    .line 4646
    return-void
.end method

.method private flush()Z
    .locals 10

    .prologue
    .line 5299
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->importance:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5300
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->importance:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Data;

    .line 5301
    const-string/jumbo v1, "data-package"

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->closeTimer(Lcom/alipay/mobile/common/transportext/mnet/Plan;Ljava/lang/String;)V

    .line 5302
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->importance:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 5304
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->importance:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Data;

    .line 5305
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Data;->cfrm:Z

    .line 5306
    const-string/jumbo v2, "data-package"

    iget v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->pendingCur:I

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->sToMs(I)J

    move-result-wide v3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->openTimer(Lcom/alipay/mobile/common/transportext/mnet/Plan;Ljava/lang/String;JLcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;)Z

    .line 5307
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->pending:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 5308
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->importance:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5311
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->sendable:Z

    .line 5312
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->current:Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    iget v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->zipCur:I

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->changeCompressMethod(I)Z

    .line 5313
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->delayed:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->missing:Z

    if-nez v0, :cond_3

    .line 5314
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->current:Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    invoke-interface {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->protect()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5315
    const/4 v0, 0x0

    .line 5374
    :goto_0
    return v0

    .line 5319
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->current:Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    invoke-interface {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->postInitReq()Z

    move-result v0

    if-nez v0, :cond_4

    .line 5320
    const/4 v0, 0x0

    goto :goto_0

    .line 5323
    :cond_4
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->allowedHb:Z

    if-eqz v0, :cond_5

    .line 5324
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->beatHeart()Z

    move-result v0

    if-nez v0, :cond_5

    .line 5325
    const/4 v0, 0x0

    goto :goto_0

    .line 5329
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->pending:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 5330
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->pending:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Data;

    .line 5331
    iget-boolean v0, v9, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Data;->secret:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->current:Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    invoke-interface {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->protect()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 5332
    :cond_6
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->resendable:Z

    if-nez v0, :cond_7

    .line 5333
    const-wide/16 v0, 0x0

    iput-wide v0, v9, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Data;->sequence:J

    .line 5336
    :cond_7
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->current:Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    iget-wide v1, v9, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Data;->receipt:J

    iget-wide v3, v9, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Data;->sequence:J

    iget-boolean v5, v9, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Data;->nearing:Z

    iget-byte v6, v9, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Data;->channel:B

    iget-object v7, v9, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Data;->header:Ljava/util/Map;

    iget-object v8, v9, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Data;->body:[B

    invoke-interface/range {v0 .. v8}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->postDataReq(JJZBLjava/util/Map;[B)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 5343
    const-string/jumbo v0, "data-package"

    invoke-direct {p0, v9, v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->closeTimer(Lcom/alipay/mobile/common/transportext/mnet/Plan;Ljava/lang/String;)V

    .line 5344
    iget-wide v0, v9, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Data;->receipt:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_8

    .line 5345
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->account:Ljava/util/Map;

    iget-wide v1, v9, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Data;->receipt:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5348
    :cond_8
    iget-wide v0, v9, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Data;->sequence:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    .line 5349
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->importance:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    .line 5350
    const/4 v1, 0x1

    iput-boolean v1, v9, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Data;->cfrm:Z

    .line 5351
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->importance:Ljava/util/LinkedList;

    invoke-virtual {v1, v9}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 5352
    const/4 v1, 0x1

    const-string/jumbo v2, "-AMNET-DATA"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "No."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v9, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Data;->sequence:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is sent."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->record(ILjava/lang/String;Ljava/lang/String;)V

    .line 5357
    if-eqz v0, :cond_5

    .line 5358
    const-string/jumbo v2, "data-package"

    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->getResendCfg()I

    move-result v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->sToMs(I)J

    move-result-wide v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v9

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->openTimer(Lcom/alipay/mobile/common/transportext/mnet/Plan;Ljava/lang/String;JLcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;)Z

    goto/16 :goto_1

    .line 5365
    :cond_9
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->pending:Ljava/util/LinkedList;

    invoke-virtual {v0, v9}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 5366
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 5369
    :cond_a
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->pending:Ljava/util/LinkedList;

    invoke-virtual {v0, v9}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 5370
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 5374
    :cond_b
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method private foreground()Z
    .locals 1

    .prologue
    .line 5517
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->disable:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->background:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->missing:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getBig(Ljava/lang/String;Z)Ljava/lang/Long;
    .locals 8

    .prologue
    const-wide/16 v6, 0xff

    const/16 v5, 0x8

    .line 5411
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->storage:Lcom/alipay/mobile/common/transportext/amnet/Storage;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/common/transportext/amnet/Storage;->getCommon(Ljava/lang/String;)[B

    move-result-object v0

    .line 5412
    :goto_0
    if-eqz v0, :cond_0

    array-length v1, v0

    if-eq v1, v5, :cond_2

    .line 5413
    :cond_0
    const/4 v0, 0x0

    .line 5431
    :goto_1
    return-object v0

    .line 5411
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->storage:Lcom/alipay/mobile/common/transportext/amnet/Storage;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/common/transportext/amnet/Storage;->getSecure(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    .line 5416
    :cond_2
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    int-to-long v1, v1

    .line 5417
    shl-long/2addr v1, v5

    .line 5418
    const/4 v3, 0x1

    aget-byte v3, v0, v3

    int-to-long v3, v3

    and-long/2addr v3, v6

    or-long/2addr v1, v3

    .line 5419
    shl-long/2addr v1, v5

    .line 5420
    const/4 v3, 0x2

    aget-byte v3, v0, v3

    int-to-long v3, v3

    and-long/2addr v3, v6

    or-long/2addr v1, v3

    .line 5421
    shl-long/2addr v1, v5

    .line 5422
    const/4 v3, 0x3

    aget-byte v3, v0, v3

    int-to-long v3, v3

    and-long/2addr v3, v6

    or-long/2addr v1, v3

    .line 5423
    shl-long/2addr v1, v5

    .line 5424
    const/4 v3, 0x4

    aget-byte v3, v0, v3

    int-to-long v3, v3

    and-long/2addr v3, v6

    or-long/2addr v1, v3

    .line 5425
    shl-long/2addr v1, v5

    .line 5426
    const/4 v3, 0x5

    aget-byte v3, v0, v3

    int-to-long v3, v3

    and-long/2addr v3, v6

    or-long/2addr v1, v3

    .line 5427
    shl-long/2addr v1, v5

    .line 5428
    const/4 v3, 0x6

    aget-byte v3, v0, v3

    int-to-long v3, v3

    and-long/2addr v3, v6

    or-long/2addr v1, v3

    .line 5429
    shl-long/2addr v1, v5

    .line 5430
    const/4 v3, 0x7

    aget-byte v0, v0, v3

    int-to-long v3, v0

    and-long/2addr v3, v6

    or-long v0, v1, v3

    .line 5431
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_1
.end method

.method private getHbCfg()Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;
    .locals 3

    .prologue
    .line 5533
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->foreground()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->hbFore:[Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;

    .line 5534
    :goto_0
    iget v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->networkCur:I

    aget-object v1, v0, v1

    .line 5536
    if-nez v1, :cond_0

    .line 5537
    const-string/jumbo v1, "/heartbeat"

    .line 5538
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->foreground()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5539
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/foreground"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5544
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->networkCur:I

    invoke-static {v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->networkCfgName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5545
    iget v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->networkCur:I

    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->cfgHb(Ljava/lang/String;I)Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;

    move-result-object v1

    .line 5546
    iget v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->networkCur:I

    aput-object v1, v0, v2

    :cond_0
    move-object v0, v1

    .line 5549
    return-object v0

    .line 5533
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->hbBack:[Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;

    goto :goto_0

    .line 5541
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/background"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private getIhCfg()Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;
    .locals 3

    .prologue
    .line 5599
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->foreground()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->prefixIh(Z)Ljava/lang/String;

    move-result-object v1

    .line 5600
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->cfgIh:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;

    .line 5602
    if-nez v0, :cond_0

    .line 5603
    invoke-direct {p0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->cfgIh(Ljava/lang/String;)Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;

    move-result-object v0

    .line 5604
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->cfgIh:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5607
    :cond_0
    iget v1, v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;->using:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 5608
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->getHbCfg()Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;

    move-result-object v1

    .line 5609
    iget v1, v1, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;->interval:I

    iput v1, v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;->using:I

    .line 5610
    const-wide/32 v1, -0x240c8400

    iput-wide v1, v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;->stamp:J

    .line 5613
    :cond_1
    return-object v0
.end method

.method private getInt(Ljava/lang/String;Z)Ljava/lang/Integer;
    .locals 3

    .prologue
    .line 5436
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->storage:Lcom/alipay/mobile/common/transportext/amnet/Storage;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/common/transportext/amnet/Storage;->getCommon(Ljava/lang/String;)[B

    move-result-object v0

    .line 5437
    :goto_0
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    .line 5438
    :cond_0
    const/4 v0, 0x0

    .line 5448
    :goto_1
    return-object v0

    .line 5436
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->storage:Lcom/alipay/mobile/common/transportext/amnet/Storage;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/common/transportext/amnet/Storage;->getSecure(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    .line 5441
    :cond_2
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    .line 5442
    shl-int/lit8 v1, v1, 0x8

    .line 5443
    const/4 v2, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    .line 5444
    shl-int/lit8 v1, v1, 0x8

    .line 5445
    const/4 v2, 0x2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    .line 5446
    shl-int/lit8 v1, v1, 0x8

    .line 5447
    const/4 v2, 0x3

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    .line 5448
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1
.end method

.method private getReconnectCfg([I)V
    .locals 3

    .prologue
    .line 5554
    const-string/jumbo v0, "The "

    .line 5555
    const/4 v1, -0x1

    iput v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->waitCur:I

    .line 5556
    array-length v1, p1

    if-nez v1, :cond_1

    .line 5557
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5558
    const/16 v1, 0x19

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->tmWait:[I

    .line 5570
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " reconnect-configuration count is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->tmWait:[I

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5574
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->tmWait:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 5575
    if-eqz v1, :cond_0

    .line 5576
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5579
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->tmWait:[I

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5574
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5566
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "configurated"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5567
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->tmWait:[I

    goto :goto_0

    .line 5582
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5583
    const/4 v1, 0x1

    const-string/jumbo v2, "-AMNET-RECONNECT"

    invoke-direct {p0, v1, v2, v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->record(ILjava/lang/String;Ljava/lang/String;)V

    .line 5584
    return-void

    .line 5558
    :array_0
    .array-data 4
        0x2
        0x3
        0x5
        0x7
        0xb
        0xd
        0x11
        0x13
        0x17
        0x1d
        0x1f
        0x25
        0x29
        0x2b
        0x2f
        0x35
        0x3b
        0x3d
        0x43
        0x47
        0x49
        0x4f
        0x53
        0x59
        0x61
    .end array-data
.end method

.method private getResendCfg()I
    .locals 3

    .prologue
    .line 5588
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->tmCfrm:[I

    iget v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->networkCur:I

    aget v0, v0, v1

    .line 5589
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 5590
    iget v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->networkCur:I

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->networkCfgName(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->networkCur:I

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->cfgResend(Ljava/lang/String;I)I

    move-result v0

    .line 5591
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->tmCfrm:[I

    iget v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->networkCur:I

    aput v0, v1, v2

    .line 5594
    :cond_0
    return v0
.end method

.method private getStr(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 5453
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->storage:Lcom/alipay/mobile/common/transportext/amnet/Storage;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/common/transportext/amnet/Storage;->getCommon(Ljava/lang/String;)[B

    move-result-object v0

    move-object v2, v0

    .line 5454
    :goto_0
    if-nez v2, :cond_1

    .line 5465
    :goto_1
    return-object v1

    .line 5453
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->storage:Lcom/alipay/mobile/common/transportext/amnet/Storage;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/common/transportext/amnet/Storage;->getSecure(Ljava/lang/String;)[B

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    .line 5460
    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move-object v1, v0

    .line 5465
    goto :goto_1

    .line 5462
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_2
.end method

.method private getTimeOutCfg()Lcom/alipay/mobile/common/transportext/amnet/Configuration$TimeOut;
    .locals 3

    .prologue
    .line 5522
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->tmLink:[Lcom/alipay/mobile/common/transportext/amnet/Configuration$TimeOut;

    iget v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->networkCur:I

    aget-object v0, v0, v1

    .line 5523
    if-nez v0, :cond_0

    .line 5524
    iget v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->networkCur:I

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->networkCfgName(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->networkCur:I

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->cfgTimeOut(Ljava/lang/String;I)Lcom/alipay/mobile/common/transportext/amnet/Configuration$TimeOut;

    move-result-object v0

    .line 5525
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->tmLink:[Lcom/alipay/mobile/common/transportext/amnet/Configuration$TimeOut;

    iget v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->networkCur:I

    aput-object v0, v1, v2

    .line 5528
    :cond_0
    return-object v0
.end method

.method private keySession()Ljava/lang/String;
    .locals 2

    .prologue
    .line 6603
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->current:Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    invoke-interface {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->getSsl()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "/mtls-session"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "/std-session"

    goto :goto_0
.end method

.method private launch(Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;J[Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;Lcom/alipay/mobile/common/transportext/amnet/NetTest;)V
    .locals 8

    .prologue
    .line 5043
    array-length v0, p4

    .line 5044
    if-eqz p1, :cond_0

    .line 5045
    mul-int/lit8 v0, v0, 0x2

    .line 5048
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->practicable:Z

    .line 5049
    new-array v0, v0, [Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->detection:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;

    .line 5050
    const/4 v1, 0x0

    .line 5052
    const/4 v0, 0x0

    move v6, v0

    move v7, v1

    :goto_0
    array-length v0, p4

    if-ge v6, v0, :cond_2

    .line 5053
    new-instance v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;

    aget-object v2, p4, v6

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->detection:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;

    move-object v1, p0

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;Lcom/alipay/mobile/common/transportext/amnet/NetTest;)V

    .line 5054
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->start()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5055
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->detection:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;

    add-int/lit8 v1, v7, 0x1

    aput-object v0, v2, v7

    move v7, v1

    .line 5058
    :cond_1
    if-eqz p1, :cond_5

    .line 5059
    new-instance v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;

    aget-object v2, p4, v6

    iget-object v4, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->detection:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;

    move-object v1, p0

    move-object v3, p1

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;Lcom/alipay/mobile/common/transportext/amnet/NetTest;)V

    .line 5060
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;->start()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 5061
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->detection:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;

    add-int/lit8 v1, v7, 0x1

    aput-object v0, v2, v7

    .line 5052
    :goto_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v7, v1

    goto :goto_0

    .line 5066
    :cond_2
    if-nez v7, :cond_4

    .line 5067
    if-eqz p5, :cond_3

    .line 5068
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string/jumbo v3, ";;n;-;;0.0;0.0;0.0"

    invoke-interface {p5, v0, v1, v2, v3}, Lcom/alipay/mobile/common/transportext/amnet/NetTest;->report(ZZZLjava/lang/String;)V

    .line 5071
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->detection:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Detection;

    .line 5075
    :goto_2
    return-void

    .line 5073
    :cond_4
    iput-wide p2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->stampTry:J

    goto :goto_2

    :cond_5
    move v1, v7

    goto :goto_1
.end method

.method private load()Z
    .locals 13

    .prologue
    const/4 v3, 0x5

    const/4 v12, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 4477
    .line 4478
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->primary:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->addrLong:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$ServerAddr;

    move-object v1, v0

    .line 4480
    :goto_0
    if-eqz v1, :cond_17

    .line 4481
    iget v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->countLink:I

    .line 4482
    iget v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->countLink:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->countLink:I

    .line 4483
    iget v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->countLink:I

    if-le v2, v3, :cond_0

    .line 4484
    iput v3, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->countLink:I

    .line 4487
    :cond_0
    if-gtz v0, :cond_1

    move v0, v6

    .line 4491
    :cond_1
    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->pickSome([Lcom/alipay/mobile/common/transportext/amnet/Amnet$ServerAddr;I)[Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;

    move-result-object v0

    .line 4494
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->msToS(J)J

    move-result-wide v2

    .line 4497
    iget-boolean v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->primary:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->hostLong:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;

    move-object v10, v1

    .line 4498
    :goto_2
    if-nez v0, :cond_16

    .line 4500
    iget v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->waitCur:I

    if-eq v0, v12, :cond_15

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->infTry:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Detect;

    if-eqz v0, :cond_15

    .line 4501
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->infTry:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Detect;

    iget-boolean v0, v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Detect;->on:Z

    if-eqz v0, :cond_15

    iget-wide v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->stampTry:J

    sub-long v0, v2, v0

    iget-object v4, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->infTry:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Detect;

    iget v4, v4, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Detect;->sleep:I

    int-to-long v8, v4

    cmp-long v0, v0, v8

    if-ltz v0, :cond_15

    .line 4502
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->infTry:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Detect;

    iget-object v0, v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Detect;->inf:[Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->infTry:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Detect;

    iget-object v0, v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Detect;->inf:[Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;

    array-length v0, v0

    if-eqz v0, :cond_15

    move v0, v6

    .line 4508
    :goto_3
    new-array v1, v6, [Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;

    .line 4509
    aput-object v10, v1, v7

    move-object v8, v1

    .line 4512
    :goto_4
    iget-boolean v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->primary:Z

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->sslLong:I

    :goto_5
    move v4, v7

    .line 4513
    :goto_6
    array-length v9, v8

    if-ge v4, v9, :cond_7

    .line 4514
    aget-object v9, v8, v4

    iget v9, v9, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;->port:I

    if-ne v9, v12, :cond_2

    .line 4515
    aget-object v11, v8, v4

    if-eq v1, v12, :cond_6

    move v9, v6

    :goto_7
    invoke-static {v9}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->defaultPort(Z)I

    move-result v9

    iput v9, v11, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;->port:I

    .line 4513
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 4478
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->addrShort:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$ServerAddr;

    move-object v1, v0

    goto :goto_0

    .line 4497
    :cond_4
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->hostShort:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;

    move-object v10, v1

    goto :goto_2

    .line 4512
    :cond_5
    iget v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->sslShort:I

    goto :goto_5

    :cond_6
    move v9, v7

    .line 4515
    goto :goto_7

    .line 4520
    :cond_7
    if-eq v1, v12, :cond_b

    move v1, v6

    :goto_8
    invoke-static {v10, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->sysProxy(Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;Z)Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;

    move-result-object v1

    .line 4521
    if-eqz v0, :cond_8

    .line 4522
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->infTry:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Detect;

    iget-object v4, v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Detect;->inf:[Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->launch(Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;J[Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;Lcom/alipay/mobile/common/transportext/amnet/NetTest;)V

    .line 4525
    :cond_8
    iget v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->countLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->countLoad:I

    .line 4526
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->renewed:Z

    if-eqz v0, :cond_9

    .line 4527
    iput-boolean v7, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->renewed:Z

    .line 4528
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->stampNew:J

    .line 4532
    :cond_9
    array-length v0, v8

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->candidate:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    .line 4533
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->primary:Z

    if-eqz v0, :cond_c

    move v0, v7

    move v2, v7

    .line 4534
    :goto_9
    array-length v3, v8

    if-ge v0, v3, :cond_e

    .line 4535
    new-instance v3, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;

    invoke-direct {v3, p0, v5}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$1;)V

    .line 4536
    iget-object v4, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->candidate:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    invoke-interface {v3, v4}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->putGroup([Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;)V

    .line 4537
    aget-object v4, v8, v0

    iget-object v4, v4, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;->ip:Ljava/lang/String;

    aget-object v9, v8, v0

    iget v9, v9, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;->port:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v4, v9}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->start(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 4540
    iget-object v4, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->candidate:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    aput-object v3, v4, v0

    .line 4541
    add-int/lit8 v2, v2, 0x1

    .line 4534
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_b
    move v1, v7

    .line 4520
    goto :goto_8

    :cond_c
    move v0, v7

    move v2, v7

    .line 4546
    :goto_a
    array-length v3, v8

    if-ge v0, v3, :cond_e

    .line 4548
    new-instance v3, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;

    invoke-direct {v3, p0, v5}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$1;)V

    .line 4549
    iget-object v4, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->candidate:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    invoke-interface {v3, v4}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->putGroup([Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;)V

    .line 4550
    aget-object v4, v8, v0

    iget-object v4, v4, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;->ip:Ljava/lang/String;

    aget-object v9, v8, v0

    iget v9, v9, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;->port:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v4, v9}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->start(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 4553
    iget-object v4, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->candidate:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    aput-object v3, v4, v0

    .line 4554
    add-int/lit8 v2, v2, 0x1

    .line 4546
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 4559
    :cond_e
    if-eqz v1, :cond_12

    .line 4560
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->primary:Z

    if-eqz v0, :cond_10

    .line 4561
    array-length v0, v8

    :goto_b
    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->candidate:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    array-length v3, v3

    if-ge v0, v3, :cond_12

    .line 4562
    new-instance v3, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;

    invoke-direct {v3, p0, v5}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$1;)V

    .line 4563
    iget-object v4, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->candidate:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    invoke-interface {v3, v4}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->putGroup([Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;)V

    .line 4564
    array-length v4, v8

    sub-int v4, v0, v4

    aget-object v4, v8, v4

    invoke-interface {v3, v4}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->putPeer(Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;)V

    .line 4565
    iget-object v4, v1, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;->ip:Ljava/lang/String;

    iget v9, v1, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;->port:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v4, v9}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->start(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 4566
    iget-object v4, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->candidate:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    aput-object v3, v4, v0

    .line 4567
    add-int/lit8 v2, v2, 0x1

    .line 4561
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 4572
    :cond_10
    array-length v0, v8

    :goto_c
    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->candidate:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    array-length v3, v3

    if-ge v0, v3, :cond_12

    .line 4574
    new-instance v3, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;

    invoke-direct {v3, p0, v5}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LongConnection;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$1;)V

    .line 4575
    iget-object v4, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->candidate:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    invoke-interface {v3, v4}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->putGroup([Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;)V

    .line 4576
    array-length v4, v8

    sub-int v4, v0, v4

    aget-object v4, v8, v4

    invoke-interface {v3, v4}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->putPeer(Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;)V

    .line 4577
    iget-object v4, v1, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;->ip:Ljava/lang/String;

    iget v9, v1, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;->port:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v4, v9}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->start(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 4578
    iget-object v4, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->candidate:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    aput-object v3, v4, v0

    .line 4579
    add-int/lit8 v2, v2, 0x1

    .line 4572
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 4585
    :cond_12
    if-nez v2, :cond_13

    .line 4586
    iput-object v5, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->candidate:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    .line 4596
    :goto_d
    return v7

    .line 4590
    :cond_13
    invoke-direct {p0, v6}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->change(I)V

    .line 4591
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->tmrPeriod:Lcom/alipay/mobile/common/transportext/amnet/Amnet$PeriodTmr;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$PeriodTmr;->closed()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 4592
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->tmrPeriod:Lcom/alipay/mobile/common/transportext/amnet/Amnet$PeriodTmr;

    const-string/jumbo v2, "period"

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->valBrk:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Flash;

    iget v0, v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Flash;->period:I

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->sToMs(I)J

    move-result-wide v3

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->openTimer(Lcom/alipay/mobile/common/transportext/mnet/Plan;Ljava/lang/String;JLcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;)Z

    .line 4595
    :cond_14
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->tmrLink:Lcom/alipay/mobile/common/transportext/amnet/Amnet$LinkTmr;

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$LinkTmr;->reset(Z)Z

    move v7, v6

    .line 4596
    goto :goto_d

    :cond_15
    move v0, v7

    goto/16 :goto_3

    :cond_16
    move-object v8, v0

    move v0, v7

    goto/16 :goto_4

    :cond_17
    move-object v0, v5

    goto/16 :goto_1
.end method

.method private static msToS(J)J
    .locals 2

    .prologue
    .line 6904
    const-wide/16 v0, 0x3e8

    div-long v0, p0, v0

    return-wide v0
.end method

.method private murder(ZZ)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 6403
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->current:Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->disused:Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    .line 6404
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->tmrHolding:Lcom/alipay/mobile/common/transportext/amnet/Amnet$HoldingTmr;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$HoldingTmr;->closed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6405
    const/4 v0, 0x2

    const-string/jumbo v1, "-AMNET-FLASH"

    const-string/jumbo v2, "It\'s too short to keep the connection."

    invoke-direct {p0, v0, v1, v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->record(ILjava/lang/String;Ljava/lang/String;)V

    .line 6408
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->tmrHolding:Lcom/alipay/mobile/common/transportext/amnet/Amnet$HoldingTmr;

    const-string/jumbo v1, "link-holding"

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->closeTimer(Lcom/alipay/mobile/common/transportext/mnet/Plan;Ljava/lang/String;)V

    .line 6409
    iget v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->countFlash:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->countFlash:I

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->valBrk:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Flash;

    iget v1, v1, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Flash;->count:I

    if-lt v0, v1, :cond_0

    .line 6410
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->tmrPeriod:Lcom/alipay/mobile/common/transportext/amnet/Amnet$PeriodTmr;

    const-string/jumbo v1, "period"

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->closeTimer(Lcom/alipay/mobile/common/transportext/mnet/Plan;Ljava/lang/String;)V

    .line 6411
    iput v3, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->countFlash:I

    .line 6412
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->tmWait:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->waitCur:I

    .line 6416
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->tmrLink:Lcom/alipay/mobile/common/transportext/amnet/Amnet$LinkTmr;

    const-string/jumbo v1, "connect"

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->closeTimer(Lcom/alipay/mobile/common/transportext/mnet/Plan;Ljava/lang/String;)V

    .line 6417
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->account:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 6418
    invoke-direct {p0, v3}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->change(I)V

    .line 6420
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->current:Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    .line 6421
    if-nez p2, :cond_1

    .line 6422
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->drop()V

    .line 6425
    :cond_1
    if-eqz p1, :cond_2

    .line 6426
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->prepare()V

    .line 6428
    :cond_2
    return-void
.end method

.method private necessary()Z
    .locals 1

    .prologue
    .line 6609
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->allowedHb:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->pending:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->importance:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static networkCfgName(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 6834
    packed-switch p0, :pswitch_data_0

    .line 6849
    const-string/jumbo v0, "/unknown"

    :goto_0
    return-object v0

    .line 6836
    :pswitch_0
    const-string/jumbo v0, "/wifi"

    goto :goto_0

    .line 6838
    :pswitch_1
    const-string/jumbo v0, "/2g-wap"

    goto :goto_0

    .line 6840
    :pswitch_2
    const-string/jumbo v0, "/2g-net"

    goto :goto_0

    .line 6842
    :pswitch_3
    const-string/jumbo v0, "/3g"

    goto :goto_0

    .line 6844
    :pswitch_4
    const-string/jumbo v0, "/4g"

    goto :goto_0

    .line 6834
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static nsToMs(J)D
    .locals 4

    .prologue
    .line 6894
    long-to-double v0, p0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private openTimer(Lcom/alipay/mobile/common/transportext/mnet/Plan;Ljava/lang/String;JLcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 6491
    invoke-virtual {p1, p3, p4, v1}, Lcom/alipay/mobile/common/transportext/mnet/Plan;->open(JZ)I

    move-result v0

    .line 6492
    if-eqz v0, :cond_2

    .line 6493
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    const/4 v0, 0x5

    .line 6495
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Can not open the "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "-timer."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6497
    if-nez p5, :cond_1

    .line 6498
    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->linkage:Lcom/alipay/mobile/common/transportext/amnet/Linkage;

    invoke-interface {v3, v0, v2}, Lcom/alipay/mobile/common/transportext/amnet/Linkage;->panic(ILjava/lang/String;)V

    :goto_1
    move v0, v1

    .line 6506
    :goto_2
    return v0

    .line 6493
    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    .line 6500
    :cond_1
    invoke-direct {p0, p5, v0, v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->panic(Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;ILjava/lang/String;)V

    goto :goto_1

    .line 6506
    :cond_2
    const/4 v0, 0x1

    goto :goto_2
.end method

.method private panic(Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 6629
    invoke-interface {p1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->getSeparatingRpt()Lcom/alipay/mobile/common/transportext/amnet/Linkage$Separating;

    move-result-object v0

    .line 6630
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Separating;->yesErr:Z

    .line 6631
    iput p2, v0, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Separating;->codeErr:I

    .line 6632
    iput-object p3, v0, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Separating;->infErr:Ljava/lang/String;

    .line 6633
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->linkage:Lcom/alipay/mobile/common/transportext/amnet/Linkage;

    invoke-interface {v0, p2, p3}, Lcom/alipay/mobile/common/transportext/amnet/Linkage;->panic(ILjava/lang/String;)V

    .line 6634
    return-void
.end method

.method private static parse(Ljava/lang/String;Z)Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 6662
    new-instance v2, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;

    invoke-direct {v2}, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;-><init>()V

    .line 6663
    const/4 v0, 0x0

    .line 6665
    const/16 v1, 0x3a

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 6667
    const/4 v1, -0x1

    if-ne v3, v1, :cond_2

    .line 6668
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 6674
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6675
    const-string/jumbo v1, "127.0.0.1"

    iput-object v1, v2, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;->ip:Ljava/lang/String;

    .line 6680
    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6681
    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->defaultPort(Z)I

    move-result v0

    iput v0, v2, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;->port:I

    .line 6702
    :cond_1
    :goto_2
    return-object v2

    .line 6670
    :cond_2
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 6671
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 6677
    :cond_3
    iput-object v1, v2, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;->ip:Ljava/lang/String;

    goto :goto_1

    .line 6684
    :cond_4
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v2, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;->port:I

    .line 6685
    iget v1, v2, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;->port:I

    if-ltz v1, :cond_5

    iget v1, v2, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;->port:I

    const v3, 0xffff

    if-le v1, v3, :cond_1

    .line 6688
    :cond_5
    const/4 v1, 0x0

    iput v1, v2, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;->port:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 6692
    :catch_0
    move-exception v1

    const-string/jumbo v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_6

    .line 6693
    const/16 v0, 0x50

    iput v0, v2, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;->port:I

    goto :goto_2

    .line 6694
    :cond_6
    const-string/jumbo v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7

    .line 6695
    const/16 v0, 0x1bb

    iput v0, v2, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;->port:I

    goto :goto_2

    .line 6697
    :cond_7
    iput v4, v2, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;->port:I

    goto :goto_2
.end method

.method private static parse(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6638
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 6639
    if-eqz p0, :cond_1

    .line 6640
    const/16 v1, 0x2c

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 6641
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 6642
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 6648
    :goto_0
    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 6649
    aput-object v5, v0, v3

    .line 6652
    :cond_0
    aget-object v1, v0, v4

    if-eqz v1, :cond_1

    aget-object v1, v0, v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 6653
    aput-object v5, v0, v4

    .line 6657
    :cond_1
    return-object v0

    .line 6644
    :cond_2
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    .line 6645
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    goto :goto_0
.end method

.method private static pickOne([Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;I)Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;
    .locals 4

    .prologue
    .line 6781
    if-nez p1, :cond_0

    .line 6782
    const/4 v0, 0x0

    .line 6793
    :goto_0
    return-object v0

    .line 6785
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 6786
    const/16 v2, 0x20

    ushr-long v2, v0, v2

    long-to-int v2, v2

    .line 6788
    long-to-int v0, v0

    xor-int/2addr v0, v2

    .line 6789
    if-gez v0, :cond_1

    .line 6790
    neg-int v0, v0

    .line 6793
    :cond_1
    rem-int/2addr v0, p1

    aget-object v0, p0, v0

    goto :goto_0
.end method

.method private static pickSome([Lcom/alipay/mobile/common/transportext/amnet/Amnet$ServerAddr;I)[Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 6798
    new-array v3, p1, [Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;

    move v0, v1

    move v2, v1

    .line 6801
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_1

    .line 6802
    aget-object v4, p0, v0

    iget v4, v4, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ServerAddr;->count:I

    aget-object v5, p0, v0

    iget v5, v5, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ServerAddr;->limit:I

    if-ge v4, v5, :cond_0

    .line 6803
    aget-object v4, p0, v0

    iget v5, v4, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ServerAddr;->count:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ServerAddr;->count:I

    .line 6804
    aget-object v4, p0, v0

    aput-object v4, v3, v2

    .line 6805
    add-int/lit8 v2, v2, 0x1

    if-eq v2, p1, :cond_1

    .line 6806
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6811
    :cond_1
    if-nez v2, :cond_4

    move v0, v1

    .line 6812
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 6813
    aget-object v2, p0, v0

    iput v1, v2, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ServerAddr;->count:I

    .line 6812
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 6816
    :cond_2
    const/4 v0, 0x0

    .line 6824
    :cond_3
    return-object v0

    .line 6819
    :cond_4
    new-array v0, v2, [Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;

    .line 6820
    :goto_2
    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 6821
    aget-object v2, v3, v1

    aput-object v2, v0, v1

    .line 6820
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private prefixIh(Z)Ljava/lang/String;
    .locals 3

    .prologue
    .line 6615
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "/heartbeat"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const-string/jumbo v0, "/foreground"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->networkCur:I

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->networkCfgName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->nameNet:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->nameNet:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string/jumbo v0, "/unknown"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string/jumbo v0, "/background"

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "/"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->nameNet:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private prepare()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 5014
    .line 5015
    :cond_0
    :goto_0
    iget v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->waitCur:I

    if-gez v0, :cond_3

    .line 5016
    iput v6, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->waitCur:I

    move v0, v6

    .line 5024
    :cond_1
    :goto_1
    if-nez v0, :cond_4

    .line 5025
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->load()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5036
    :cond_2
    return-void

    .line 5018
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->tmWait:[I

    iget v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->waitCur:I

    aget v0, v0, v1

    .line 5019
    iget v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->waitCur:I

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->tmWait:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 5020
    iget v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->waitCur:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->waitCur:I

    goto :goto_1

    .line 5029
    :cond_4
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->tmrRetry:Lcom/alipay/mobile/common/transportext/amnet/Amnet$RetryTmr;

    const-string/jumbo v2, "reconnect"

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->sToMs(I)J

    move-result-wide v3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->openTimer(Lcom/alipay/mobile/common/transportext/mnet/Plan;Ljava/lang/String;JLcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->load()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0
.end method

.method private putAddressCfg([Lcom/alipay/mobile/common/transportext/amnet/Configuration$AddrInf;)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v1, 0x0

    .line 5641
    move v0, v1

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_5

    .line 5642
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "/address-list/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5643
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/IP"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aget-object v4, p1, v0

    iget-object v4, v4, Lcom/alipay/mobile/common/transportext/amnet/Configuration$AddrInf;->ip:Ljava/lang/String;

    invoke-direct {p0, v3, v4, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->putStr(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 5644
    aget-object v3, p1, v0

    iget v3, v3, Lcom/alipay/mobile/common/transportext/amnet/Configuration$AddrInf;->port:I

    if-eq v3, v5, :cond_0

    .line 5645
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/port"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aget-object v4, p1, v0

    iget v4, v4, Lcom/alipay/mobile/common/transportext/amnet/Configuration$AddrInf;->port:I

    invoke-direct {p0, v3, v4, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->putInt(Ljava/lang/String;IZ)V

    .line 5648
    :cond_0
    aget-object v3, p1, v0

    iget-object v3, v3, Lcom/alipay/mobile/common/transportext/amnet/Configuration$AddrInf;->ipAcc:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 5649
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/ACC-IP"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aget-object v4, p1, v0

    iget-object v4, v4, Lcom/alipay/mobile/common/transportext/amnet/Configuration$AddrInf;->ipAcc:Ljava/lang/String;

    invoke-direct {p0, v3, v4, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->putStr(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 5652
    :cond_1
    aget-object v3, p1, v0

    iget v3, v3, Lcom/alipay/mobile/common/transportext/amnet/Configuration$AddrInf;->portAcc:I

    if-eq v3, v5, :cond_2

    .line 5653
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/ACC-port"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aget-object v4, p1, v0

    iget v4, v4, Lcom/alipay/mobile/common/transportext/amnet/Configuration$AddrInf;->portAcc:I

    invoke-direct {p0, v3, v4, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->putInt(Ljava/lang/String;IZ)V

    .line 5656
    :cond_2
    aget-object v3, p1, v0

    iget v3, v3, Lcom/alipay/mobile/common/transportext/amnet/Configuration$AddrInf;->type:I

    if-eq v3, v5, :cond_3

    .line 5657
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aget-object v4, p1, v0

    iget v4, v4, Lcom/alipay/mobile/common/transportext/amnet/Configuration$AddrInf;->type:I

    invoke-direct {p0, v3, v4, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->putInt(Ljava/lang/String;IZ)V

    .line 5660
    :cond_3
    aget-object v3, p1, v0

    iget v3, v3, Lcom/alipay/mobile/common/transportext/amnet/Configuration$AddrInf;->score:I

    if-eq v3, v5, :cond_4

    .line 5661
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/score"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p1, v0

    iget v3, v3, Lcom/alipay/mobile/common/transportext/amnet/Configuration$AddrInf;->score:I

    invoke-direct {p0, v2, v3, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->putInt(Ljava/lang/String;IZ)V

    .line 5641
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 5665
    :cond_5
    const-string/jumbo v0, "/address-list"

    array-length v2, p1

    invoke-direct {p0, v0, v2, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->putInt(Ljava/lang/String;IZ)V

    .line 5666
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->convert([Lcom/alipay/mobile/common/transportext/amnet/Configuration$AddrInf;)V

    .line 5667
    return-void
.end method

.method private putBig(Ljava/lang/String;JZ)V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 5470
    new-array v0, v4, [B

    .line 5471
    const/4 v1, 0x0

    const/16 v2, 0x38

    shr-long v2, p2, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 5472
    const/4 v1, 0x1

    const/16 v2, 0x30

    shr-long v2, p2, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 5473
    const/4 v1, 0x2

    const/16 v2, 0x28

    shr-long v2, p2, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 5474
    const/4 v1, 0x3

    const/16 v2, 0x20

    shr-long v2, p2, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 5475
    const/4 v1, 0x4

    const/16 v2, 0x18

    shr-long v2, p2, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 5476
    const/4 v1, 0x5

    const/16 v2, 0x10

    shr-long v2, p2, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 5477
    const/4 v1, 0x6

    shr-long v2, p2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 5478
    const/4 v1, 0x7

    long-to-int v2, p2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 5479
    if-eqz p4, :cond_0

    .line 5480
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->storage:Lcom/alipay/mobile/common/transportext/amnet/Storage;

    invoke-interface {v1, p1, v0}, Lcom/alipay/mobile/common/transportext/amnet/Storage;->putCommon(Ljava/lang/String;[B)V

    .line 5484
    :goto_0
    return-void

    .line 5482
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->storage:Lcom/alipay/mobile/common/transportext/amnet/Storage;

    invoke-interface {v1, p1, v0}, Lcom/alipay/mobile/common/transportext/amnet/Storage;->putSecure(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method private putDetectCfg(Lcom/alipay/mobile/common/transportext/amnet/Configuration$Detect;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 5738
    const-string/jumbo v3, "/detect/on"

    iget-boolean v0, p1, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Detect;->on:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    invoke-direct {p0, v3, v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->putInt(Ljava/lang/String;IZ)V

    .line 5741
    const-string/jumbo v0, "/detect/sleep"

    iget v3, p1, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Detect;->sleep:I

    invoke-direct {p0, v0, v3, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->putInt(Ljava/lang/String;IZ)V

    .line 5744
    iget-object v0, p1, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Detect;->inf:[Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;

    if-eqz v0, :cond_5

    .line 5745
    const-string/jumbo v0, "/detect/information"

    .line 5746
    :goto_1
    iget-object v3, p1, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Detect;->inf:[Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;

    array-length v3, v3

    if-ge v2, v3, :cond_4

    .line 5747
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5748
    iget-object v4, p1, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Detect;->inf:[Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;->domain:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 5749
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/domain"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Detect;->inf:[Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;->domain:Ljava/lang/String;

    invoke-direct {p0, v4, v5, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->putStr(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 5754
    :cond_0
    iget-object v4, p1, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Detect;->inf:[Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;->ip:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 5755
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/IP"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Detect;->inf:[Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;->ip:Ljava/lang/String;

    invoke-direct {p0, v4, v5, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->putStr(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 5758
    :cond_1
    iget-object v4, p1, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Detect;->inf:[Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;

    aget-object v4, v4, v2

    iget v4, v4, Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;->port:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 5759
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/port"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Detect;->inf:[Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;->port:I

    invoke-direct {p0, v4, v5, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->putInt(Ljava/lang/String;IZ)V

    .line 5764
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/protocol"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Detect;->inf:[Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;->protocol:I

    invoke-direct {p0, v4, v5, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->putInt(Ljava/lang/String;IZ)V

    .line 5767
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/request"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Detect;->inf:[Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;->request:Ljava/lang/String;

    invoke-direct {p0, v4, v5, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->putStr(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 5770
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/response"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Detect;->inf:[Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;->response:Ljava/lang/String;

    invoke-direct {p0, v4, v5, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->putStr(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 5773
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/waiting"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Detect;->inf:[Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;->waiting:I

    invoke-direct {p0, v4, v5, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->putInt(Ljava/lang/String;IZ)V

    .line 5776
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/trying"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Detect;->inf:[Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;

    aget-object v4, v4, v2

    iget v4, v4, Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;->trying:I

    invoke-direct {p0, v3, v4, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->putInt(Ljava/lang/String;IZ)V

    .line 5746
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_3
    move v0, v2

    .line 5738
    goto/16 :goto_0

    .line 5781
    :cond_4
    iget-object v2, p1, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Detect;->inf:[Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;

    array-length v2, v2

    invoke-direct {p0, v0, v2, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->putInt(Ljava/lang/String;IZ)V

    .line 5784
    :cond_5
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->cfgDetect(Lcom/alipay/mobile/common/transportext/amnet/Configuration$Detect;)V

    .line 5785
    return-void
.end method

.method private putFlashCfg(Lcom/alipay/mobile/common/transportext/amnet/Configuration$Flash;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 5682
    iget v0, p1, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Flash;->period:I

    if-eq v0, v2, :cond_0

    .line 5683
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->valBrk:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Flash;

    iget v1, p1, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Flash;->period:I

    iput v1, v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Flash;->period:I

    .line 5684
    const-string/jumbo v0, "/flash/period"

    iget v1, p1, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Flash;->period:I

    invoke-direct {p0, v0, v1, v3}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->putInt(Ljava/lang/String;IZ)V

    .line 5689
    :cond_0
    iget v0, p1, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Flash;->count:I

    if-eq v0, v2, :cond_1

    .line 5690
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->valBrk:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Flash;

    iget v1, p1, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Flash;->count:I

    iput v1, v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Flash;->count:I

    .line 5691
    const-string/jumbo v0, "/flash/count"

    iget v1, p1, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Flash;->count:I

    invoke-direct {p0, v0, v1, v3}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->putInt(Ljava/lang/String;IZ)V

    .line 5696
    :cond_1
    iget v0, p1, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Flash;->holding:I

    if-eq v0, v2, :cond_2

    .line 5697
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->valBrk:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Flash;

    iget v1, p1, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Flash;->holding:I

    iput v1, v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Flash;->holding:I

    .line 5698
    const-string/jumbo v0, "/flash/holding"

    iget v1, p1, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Flash;->holding:I

    invoke-direct {p0, v0, v1, v3}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->putInt(Ljava/lang/String;IZ)V

    .line 5702
    :cond_2
    return-void
.end method

.method private putHbCfg([Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;Ljava/util/Map;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 5630
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "/heartbeat"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5631
    const-string/jumbo v4, "/unknown"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->cfgHb([Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)V

    .line 5632
    const-string/jumbo v4, "/wifi"

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->cfgHb([Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)V

    .line 5633
    const-string/jumbo v4, "/2g-wap"

    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->cfgHb([Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)V

    .line 5634
    const-string/jumbo v4, "/2g-net"

    const/4 v5, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->cfgHb([Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)V

    .line 5635
    const-string/jumbo v4, "/3g"

    const/4 v5, 0x4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->cfgHb([Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)V

    .line 5636
    const-string/jumbo v4, "/4g"

    const/4 v5, 0x5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->cfgHb([Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)V

    .line 5637
    return-void
.end method

.method private putIhCfg(Ljava/lang/String;Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;Z)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 5799
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/using"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p2, Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;->using:I

    invoke-direct {p0, v0, v1, v4}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->putInt(Ljava/lang/String;IZ)V

    .line 5800
    if-eqz p3, :cond_0

    .line 5801
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/stamp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p2, Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;->stamp:J

    invoke-direct {p0, v0, v1, v2, v4}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->putBig(Ljava/lang/String;JZ)V

    .line 5802
    const-string/jumbo v0, "-AMNET-IH-PUT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "={ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;->using:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p2, Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;->stamp:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v4, v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->record(ILjava/lang/String;Ljava/lang/String;)V

    .line 5816
    :goto_0
    return-void

    .line 5810
    :cond_0
    const-string/jumbo v0, "-AMNET-IH-PUT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/using = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;->using:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v4, v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->record(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private putInt(Ljava/lang/String;IZ)V
    .locals 3

    .prologue
    .line 5488
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 5489
    const/4 v1, 0x0

    shr-int/lit8 v2, p2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 5490
    const/4 v1, 0x1

    shr-int/lit8 v2, p2, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 5491
    const/4 v1, 0x2

    shr-int/lit8 v2, p2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 5492
    const/4 v1, 0x3

    int-to-byte v2, p2

    aput-byte v2, v0, v1

    .line 5493
    if-eqz p3, :cond_0

    .line 5494
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->storage:Lcom/alipay/mobile/common/transportext/amnet/Storage;

    invoke-interface {v1, p1, v0}, Lcom/alipay/mobile/common/transportext/amnet/Storage;->putCommon(Ljava/lang/String;[B)V

    .line 5498
    :goto_0
    return-void

    .line 5496
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->storage:Lcom/alipay/mobile/common/transportext/amnet/Storage;

    invoke-interface {v1, p1, v0}, Lcom/alipay/mobile/common/transportext/amnet/Storage;->putSecure(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method private putMiscCfg(Lcom/alipay/mobile/common/transportext/amnet/Configuration$Misc;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 5706
    iget v0, p1, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Misc;->compress:I

    if-eq v0, v2, :cond_0

    .line 5707
    iget v0, p1, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Misc;->compress:I

    iput v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->zipCur:I

    .line 5708
    const-string/jumbo v0, "/misc/compress"

    iget v1, p1, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Misc;->compress:I

    invoke-direct {p0, v0, v1, v3}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->putInt(Ljava/lang/String;IZ)V

    .line 5711
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->current:Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    iget v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->zipCur:I

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->changeCompressMethod(I)Z

    .line 5714
    :cond_0
    iget v0, p1, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Misc;->log:I

    if-eq v0, v2, :cond_1

    .line 5715
    iget v0, p1, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Misc;->log:I

    iput v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->levelCur:I

    .line 5716
    const-string/jumbo v0, "/misc/log"

    iget v1, p1, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Misc;->log:I

    invoke-direct {p0, v0, v1, v3}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->putInt(Ljava/lang/String;IZ)V

    .line 5721
    :cond_1
    iget v0, p1, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Misc;->pending:I

    if-eq v0, v2, :cond_2

    .line 5722
    iget v0, p1, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Misc;->pending:I

    iput v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->pendingCur:I

    .line 5723
    const-string/jumbo v0, "/misc/pending"

    iget v1, p1, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Misc;->pending:I

    invoke-direct {p0, v0, v1, v3}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->putInt(Ljava/lang/String;IZ)V

    .line 5728
    :cond_2
    iget v0, p1, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Misc;->reset:I

    if-eq v0, v2, :cond_3

    .line 5729
    iget v0, p1, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Misc;->reset:I

    iput v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->resetCur:I

    .line 5730
    const-string/jumbo v0, "/misc/reset"

    iget v1, p1, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Misc;->reset:I

    invoke-direct {p0, v0, v1, v3}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->putInt(Ljava/lang/String;IZ)V

    .line 5734
    :cond_3
    return-void
.end method

.method private putReconnectCfg([I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 5671
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 5672
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "/reconnect/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5673
    aget v2, p1, v0

    invoke-direct {p0, v1, v2, v3}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->putInt(Ljava/lang/String;IZ)V

    .line 5671
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5676
    :cond_0
    const-string/jumbo v0, "/reconnect"

    array-length v1, p1

    invoke-direct {p0, v0, v1, v3}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->putInt(Ljava/lang/String;IZ)V

    .line 5677
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->getReconnectCfg([I)V

    .line 5678
    return-void
.end method

.method private putResendCfg(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5789
    const-string/jumbo v0, "/unknown"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->cfgResend(Ljava/util/Map;Ljava/lang/String;I)V

    .line 5790
    const-string/jumbo v0, "/wifi"

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->cfgResend(Ljava/util/Map;Ljava/lang/String;I)V

    .line 5791
    const-string/jumbo v0, "/2g-wap"

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->cfgResend(Ljava/util/Map;Ljava/lang/String;I)V

    .line 5792
    const-string/jumbo v0, "/2g-net"

    const/4 v1, 0x3

    invoke-direct {p0, p1, v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->cfgResend(Ljava/util/Map;Ljava/lang/String;I)V

    .line 5793
    const-string/jumbo v0, "/3g"

    const/4 v1, 0x4

    invoke-direct {p0, p1, v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->cfgResend(Ljava/util/Map;Ljava/lang/String;I)V

    .line 5794
    const-string/jumbo v0, "/4g"

    const/4 v1, 0x5

    invoke-direct {p0, p1, v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->cfgResend(Ljava/util/Map;Ljava/lang/String;I)V

    .line 5795
    return-void
.end method

.method private putStr(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 5503
    :try_start_0
    const-string/jumbo v0, "UTF-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 5504
    if-eqz v0, :cond_0

    .line 5505
    if-eqz p3, :cond_1

    .line 5506
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->storage:Lcom/alipay/mobile/common/transportext/amnet/Storage;

    invoke-interface {v1, p1, v0}, Lcom/alipay/mobile/common/transportext/amnet/Storage;->putCommon(Ljava/lang/String;[B)V

    .line 5513
    :cond_0
    :goto_0
    return-void

    .line 5508
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->storage:Lcom/alipay/mobile/common/transportext/amnet/Storage;

    invoke-interface {v1, p1, v0}, Lcom/alipay/mobile/common/transportext/amnet/Storage;->putSecure(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5513
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private putTimeOutCfg(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/alipay/mobile/common/transportext/amnet/Configuration$TimeOut;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5618
    const-string/jumbo v0, "/unknown"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->cfgTimeOut(Ljava/util/Map;Ljava/lang/String;I)V

    .line 5619
    const-string/jumbo v0, "/wifi"

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->cfgTimeOut(Ljava/util/Map;Ljava/lang/String;I)V

    .line 5620
    const-string/jumbo v0, "/2g-wap"

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->cfgTimeOut(Ljava/util/Map;Ljava/lang/String;I)V

    .line 5621
    const-string/jumbo v0, "/2g-net"

    const/4 v1, 0x3

    invoke-direct {p0, p1, v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->cfgTimeOut(Ljava/util/Map;Ljava/lang/String;I)V

    .line 5622
    const-string/jumbo v0, "/3g"

    const/4 v1, 0x4

    invoke-direct {p0, p1, v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->cfgTimeOut(Ljava/util/Map;Ljava/lang/String;I)V

    .line 5623
    const-string/jumbo v0, "/4g"

    const/4 v1, 0x5

    invoke-direct {p0, p1, v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->cfgTimeOut(Ljava/util/Map;Ljava/lang/String;I)V

    .line 5624
    return-void
.end method

.method private record(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 6432
    iget v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->levelCur:I

    if-lt p1, v0, :cond_0

    .line 6433
    packed-switch p1, :pswitch_data_0

    .line 6448
    const-string/jumbo v0, "FATAL"

    .line 6452
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->notepad:Lcom/alipay/mobile/common/transportext/amnet/Notepad;

    invoke-interface {v1, v0, p2, p3}, Lcom/alipay/mobile/common/transportext/amnet/Notepad;->print(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6454
    :cond_0
    return-void

    .line 6436
    :pswitch_0
    const-string/jumbo v0, "DEBUG"

    goto :goto_0

    .line 6439
    :pswitch_1
    const-string/jumbo v0, "INFO"

    goto :goto_0

    .line 6442
    :pswitch_2
    const-string/jumbo v0, "WARN"

    goto :goto_0

    .line 6445
    :pswitch_3
    const-string/jumbo v0, "ERROR"

    goto :goto_0

    .line 6433
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private reload()V
    .locals 2

    .prologue
    .line 4623
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->unload()V

    .line 4624
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->disused:Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    invoke-interface {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->getSsl()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->change(I)V

    .line 4627
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->disused:Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->current:Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    .line 4628
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->disused:Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    .line 4629
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->renewed:Z

    .line 4630
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->current:Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    invoke-interface {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->getSeparatingRpt()Lcom/alipay/mobile/common/transportext/amnet/Linkage$Separating;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Separating;->yesErr:Z

    .line 4631
    return-void

    .line 4624
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private remove(Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 4976
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->candidate:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->getGroup()[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->candidate:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    if-ne v0, v2, :cond_4

    .line 4977
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->candidate:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    array-length v0, v0

    move v2, v1

    move v4, v0

    move v0, v3

    .line 4981
    :goto_0
    add-int/lit8 v5, v4, -0x1

    if-eqz v4, :cond_3

    .line 4982
    iget-object v4, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->candidate:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    aget-object v4, v4, v5

    .line 4983
    if-ne v4, p1, :cond_0

    .line 4984
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->candidate:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    aput-object v6, v2, v5

    .line 4985
    if-eqz v0, :cond_3

    move v2, v3

    move v4, v5

    .line 4986
    goto :goto_0

    .line 4990
    :cond_0
    if-eqz v4, :cond_1

    .line 4992
    if-nez v2, :cond_2

    move v0, v1

    :cond_1
    move v4, v5

    .line 4993
    goto :goto_0

    :cond_2
    move v0, v1

    .line 4998
    :cond_3
    if-eqz v0, :cond_4

    .line 4999
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->tmrLink:Lcom/alipay/mobile/common/transportext/amnet/Amnet$LinkTmr;

    const-string/jumbo v2, "connect"

    invoke-direct {p0, v0, v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->closeTimer(Lcom/alipay/mobile/common/transportext/mnet/Plan;Ljava/lang/String;)V

    .line 5000
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->tmrPeriod:Lcom/alipay/mobile/common/transportext/amnet/Amnet$PeriodTmr;

    const-string/jumbo v2, "period"

    invoke-direct {p0, v0, v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->closeTimer(Lcom/alipay/mobile/common/transportext/mnet/Plan;Ljava/lang/String;)V

    .line 5001
    invoke-direct {p0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->change(I)V

    .line 5002
    iput-object v6, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->candidate:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    .line 5003
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->prepare()V

    .line 5007
    :cond_4
    invoke-interface {p1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->stop()V

    .line 5008
    return-void
.end method

.method private static sToMs(I)J
    .locals 4

    .prologue
    .line 6899
    int-to-long v0, p0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method private static safety(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 6724
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6725
    :cond_0
    const/4 p0, 0x0

    .line 6728
    :cond_1
    return-object p0
.end method

.method private safety()V
    .locals 4

    .prologue
    const/4 v0, -0x3

    .line 6579
    iget-boolean v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->primary:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->sslLong:I

    .line 6580
    :goto_0
    const/4 v2, -0x1

    if-ge v1, v2, :cond_1

    iget-boolean v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->hasteful:Z

    if-eqz v2, :cond_1

    .line 6581
    rsub-int/lit8 v2, v1, -0x1

    add-int/lit8 v2, v2, -0x1

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    .line 6582
    const/4 v3, 0x2

    if-ge v2, v3, :cond_3

    .line 6583
    add-int/lit8 v0, v1, -0x2

    .line 6593
    :cond_0
    :goto_1
    iget-boolean v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->primary:Z

    if-eqz v1, :cond_4

    .line 6594
    iput v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->sslLong:I

    .line 6599
    :cond_1
    :goto_2
    return-void

    .line 6579
    :cond_2
    iget v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->sslShort:I

    goto :goto_0

    .line 6585
    :cond_3
    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 6586
    if-ne v1, v0, :cond_0

    .line 6587
    const/4 v0, -0x2

    goto :goto_1

    .line 6596
    :cond_4
    iput v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->sslShort:I

    goto :goto_2
.end method

.method private security()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, -0x1

    .line 6556
    iget-boolean v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->primary:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->sslLong:I

    .line 6557
    :goto_0
    if-eq v1, v3, :cond_3

    .line 6558
    iget-boolean v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->hasteful:Z

    if-nez v2, :cond_2

    .line 6570
    :cond_0
    :goto_1
    return v0

    .line 6556
    :cond_1
    iget v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->sslShort:I

    goto :goto_0

    .line 6560
    :cond_2
    if-ge v1, v3, :cond_3

    .line 6561
    rsub-int/lit8 v2, v1, -0x1

    add-int/lit8 v2, v2, -0x1

    div-int/lit8 v2, v2, 0x2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 6562
    const/4 v2, -0x2

    if-eq v1, v2, :cond_0

    .line 6564
    const/4 v0, -0x3

    if-ne v1, v0, :cond_3

    .line 6565
    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private static security(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 6707
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6708
    :cond_0
    const/4 v0, -0x1

    .line 6719
    :goto_0
    return v0

    .line 6711
    :cond_1
    const-string/jumbo v0, "mtls"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 6712
    const/4 v0, 0x1

    goto :goto_0

    .line 6715
    :cond_2
    const-string/jumbo v0, "standard"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 6716
    const/4 v0, 0x0

    goto :goto_0

    .line 6719
    :cond_3
    const/4 v0, -0x3

    goto :goto_0
.end method

.method private shiftAddr(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 4875
    .line 4878
    const-string/jumbo v0, "short-link"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    move v3, v1

    move v0, v2

    .line 4889
    :goto_0
    if-eqz v0, :cond_0

    .line 4890
    iget v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->sslLong:I

    if-eq v0, v5, :cond_5

    move v0, v1

    :goto_1
    invoke-static {p2, v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->shortcut(Ljava/lang/String;Z)[Lcom/alipay/mobile/common/transportext/amnet/Amnet$ServerAddr;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->addrLong:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$ServerAddr;

    .line 4891
    const-string/jumbo v0, "-AMNET-ADDR-LIST"

    const-string/jumbo v4, "The long-link-address is updated."

    invoke-direct {p0, v1, v0, v4}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->record(ILjava/lang/String;Ljava/lang/String;)V

    .line 4896
    :cond_0
    if-eqz v3, :cond_2

    .line 4897
    iget v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->sslShort:I

    if-eq v0, v5, :cond_1

    move v2, v1

    :cond_1
    invoke-static {p2, v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->shortcut(Ljava/lang/String;Z)[Lcom/alipay/mobile/common/transportext/amnet/Amnet$ServerAddr;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->addrShort:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$ServerAddr;

    .line 4898
    const-string/jumbo v0, "-AMNET-ADDR-LIST"

    const-string/jumbo v2, "The short-link-address is updated."

    invoke-direct {p0, v1, v0, v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->record(ILjava/lang/String;Ljava/lang/String;)V

    .line 4902
    :cond_2
    return-void

    .line 4880
    :cond_3
    const-string/jumbo v0, "long-link"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    move v3, v2

    move v0, v1

    .line 4882
    goto :goto_0

    .line 4883
    :cond_4
    const-string/jumbo v0, "all-link"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    move v3, v1

    move v0, v1

    .line 4886
    goto :goto_0

    :cond_5
    move v0, v2

    .line 4890
    goto :goto_1

    :cond_6
    move v3, v2

    move v0, v2

    goto :goto_0
.end method

.method private shiftGnd(Z)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 4741
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->foreground()Z

    move-result v2

    .line 4742
    if-eq v2, p1, :cond_1

    .line 4743
    const-string/jumbo v3, "-AMNET-ALT"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "The application is switched to "

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_0

    const-string/jumbo v0, "foreground"

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v3, v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->record(ILjava/lang/String;Ljava/lang/String;)V

    .line 4748
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->current:Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->allowedHb:Z

    if-eqz v0, :cond_1

    .line 4749
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->beatHeart()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4750
    const/4 v0, 0x0

    .line 4763
    :goto_1
    return v0

    .line 4743
    :cond_0
    const-string/jumbo v0, "background"

    goto :goto_0

    .line 4755
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->current:Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    if-nez v0, :cond_4

    .line 4756
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->candidate:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->allowedAct:Z

    if-eqz v0, :cond_3

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->necessary()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4757
    :cond_2
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->wake()V

    :cond_3
    move v0, v1

    .line 4763
    goto :goto_1

    .line 4759
    :cond_4
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->sendable:Z

    if-eqz v0, :cond_3

    if-eq v2, p1, :cond_3

    .line 4760
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->current:Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    invoke-interface {v0, v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->postGroundStatusReq(Z)Z

    move-result v0

    goto :goto_1
.end method

.method private shiftHb(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 4794
    .line 4797
    const-string/jumbo v0, "static"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    move v1, v2

    move v0, v2

    .line 4804
    :goto_0
    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->aptotic:Z

    if-eq v1, v0, :cond_1

    .line 4805
    const-string/jumbo v4, "-AMNET-ALT-HEARTBEAT"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "The heartbeat should be "

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_3

    const-string/jumbo v0, "static"

    :goto_1
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, "."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v4, v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->record(ILjava/lang/String;Ljava/lang/String;)V

    .line 4811
    iput-boolean v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->aptotic:Z

    .line 4812
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->current:Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->sendable:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->allowedHb:Z

    if-eqz v0, :cond_1

    .line 4813
    if-eqz v1, :cond_4

    .line 4814
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->getHbCfg()Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;

    move-result-object v0

    .line 4815
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->current:Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    invoke-interface {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->closeIntelligentHb()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->current:Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    iget v4, v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;->interval:I

    iget v0, v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;->silence:I

    invoke-interface {v1, v4, v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->openHeartbeat(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4818
    :cond_0
    const-string/jumbo v0, "2"

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->actLink:Ljava/lang/String;

    .line 4819
    invoke-direct {p0, v2, v3}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->murder(ZZ)V

    .line 4831
    :cond_1
    :goto_2
    return-void

    .line 4799
    :cond_2
    const-string/jumbo v0, "dynamic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_6

    move v1, v3

    move v0, v3

    .line 4801
    goto :goto_0

    .line 4805
    :cond_3
    const-string/jumbo v0, "dynamic"

    goto :goto_1

    .line 4822
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->current:Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    invoke-interface {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->closeHeartbeat()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->current:Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    invoke-interface {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->openIntelligentHb()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4825
    :cond_5
    const-string/jumbo v0, "2"

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->actLink:Ljava/lang/String;

    .line 4826
    invoke-direct {p0, v2, v3}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->murder(ZZ)V

    goto :goto_2

    :cond_6
    move v1, v3

    move v0, v2

    goto/16 :goto_0
.end method

.method private shiftNet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 4663
    iput-boolean v3, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->allowedAct:Z

    .line 4664
    if-nez p1, :cond_1

    .line 4667
    iput-boolean v3, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->probing:Z

    .line 4737
    :cond_0
    :goto_0
    return-void

    .line 4668
    :cond_1
    const-string/jumbo v0, "2g"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    .line 4669
    iput-boolean v3, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->renewed:Z

    .line 4670
    if-nez p2, :cond_2

    .line 4672
    const-string/jumbo v0, "2g"

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->nameNet:Ljava/lang/String;

    .line 4673
    const-string/jumbo v0, "-AMNET-ALT-NET"

    const-string/jumbo v1, "The network is switched to 2G-WAP."

    invoke-direct {p0, v3, v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->record(ILjava/lang/String;Ljava/lang/String;)V

    .line 4676
    iput v4, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->networkCur:I

    goto :goto_0

    .line 4678
    :cond_2
    iput-object p2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->nameNet:Ljava/lang/String;

    .line 4679
    const-string/jumbo v0, "cmnet"

    invoke-virtual {p2, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "uninet"

    invoke-virtual {p2, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "ctnet"

    invoke-virtual {p2, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    .line 4683
    :cond_3
    const-string/jumbo v0, "-AMNET-ALT-NET"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "The network is switched to 2G-NET. ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->record(ILjava/lang/String;Ljava/lang/String;)V

    .line 4688
    const/4 v0, 0x3

    iput v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->networkCur:I

    goto :goto_0

    .line 4693
    :cond_4
    const-string/jumbo v0, "-AMNET-ALT-NET"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "The network is switched to 2G-WAP. ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->record(ILjava/lang/String;Ljava/lang/String;)V

    .line 4698
    iput v4, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->networkCur:I

    goto :goto_0

    .line 4701
    :cond_5
    const-string/jumbo v0, "3g"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7

    .line 4702
    iput-boolean v3, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->renewed:Z

    .line 4703
    if-nez p2, :cond_6

    const-string/jumbo p2, "3g"

    :cond_6
    iput-object p2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->nameNet:Ljava/lang/String;

    .line 4704
    const-string/jumbo v0, "-AMNET-ALT-NET"

    const-string/jumbo v1, "The network is switched to 3G."

    invoke-direct {p0, v3, v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->record(ILjava/lang/String;Ljava/lang/String;)V

    .line 4707
    const/4 v0, 0x4

    iput v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->networkCur:I

    goto/16 :goto_0

    .line 4708
    :cond_7
    const-string/jumbo v0, "4g"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9

    .line 4709
    iput-boolean v3, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->renewed:Z

    .line 4710
    if-nez p2, :cond_8

    const-string/jumbo p2, "4g"

    :cond_8
    iput-object p2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->nameNet:Ljava/lang/String;

    .line 4711
    const-string/jumbo v0, "-AMNET-ALT-NET"

    const-string/jumbo v1, "The network is switched to 4G."

    invoke-direct {p0, v3, v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->record(ILjava/lang/String;Ljava/lang/String;)V

    .line 4714
    const/4 v0, 0x5

    iput v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->networkCur:I

    goto/16 :goto_0

    .line 4715
    :cond_9
    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_b

    .line 4716
    iput-boolean v3, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->renewed:Z

    .line 4717
    if-nez p2, :cond_a

    const-string/jumbo p2, "wifi"

    :cond_a
    iput-object p2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->nameNet:Ljava/lang/String;

    .line 4718
    const-string/jumbo v0, "-AMNET-ALT-NET"

    const-string/jumbo v1, "The network is switched to WIFI."

    invoke-direct {p0, v3, v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->record(ILjava/lang/String;Ljava/lang/String;)V

    .line 4721
    iput v3, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->networkCur:I

    goto/16 :goto_0

    .line 4722
    :cond_b
    const-string/jumbo v0, "unknown"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_d

    .line 4724
    iput-boolean v3, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->renewed:Z

    .line 4725
    if-nez p2, :cond_c

    const-string/jumbo p2, "other"

    :cond_c
    iput-object p2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->nameNet:Ljava/lang/String;

    .line 4726
    const-string/jumbo v0, "-AMNET-ALT-NET"

    const-string/jumbo v1, "The network is switched to UNKNOWN."

    invoke-direct {p0, v3, v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->record(ILjava/lang/String;Ljava/lang/String;)V

    .line 4729
    iput v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->networkCur:I

    goto/16 :goto_0

    .line 4730
    :cond_d
    const-string/jumbo v0, "none"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 4731
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->nameNet:Ljava/lang/String;

    .line 4732
    const-string/jumbo v0, "-AMNET-ALT-NET"

    const-string/jumbo v1, "The network is shut down."

    invoke-direct {p0, v3, v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->record(ILjava/lang/String;Ljava/lang/String;)V

    .line 4735
    iput-boolean v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->allowedAct:Z

    goto/16 :goto_0
.end method

.method private shiftRtt(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 4857
    .line 4858
    const-string/jumbo v2, "normal"

    invoke-virtual {p1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 4859
    iput-boolean v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->hasteful:Z

    move v0, v1

    .line 4866
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 4867
    const-string/jumbo v2, "-AMNET-ALT-RTT"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "The 0-RTT is "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->hasteful:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "enabled."

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->record(ILjava/lang/String;Ljava/lang/String;)V

    .line 4871
    :cond_1
    return-void

    .line 4860
    :cond_2
    const-string/jumbo v2, "fast"

    invoke-virtual {p1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 4861
    iput-boolean v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->hasteful:Z

    move v0, v1

    goto :goto_0

    .line 4867
    :cond_3
    const-string/jumbo v0, "disabled."

    goto :goto_1
.end method

.method private shiftSsl(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 4835
    const-string/jumbo v0, "instant"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 4836
    const-string/jumbo v0, "-AMNET-ALT-SSL"

    const-string/jumbo v1, "The whole link should be protected."

    invoke-direct {p0, v2, v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->record(ILjava/lang/String;Ljava/lang/String;)V

    .line 4839
    iput-boolean v3, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->delayed:Z

    .line 4840
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->current:Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    if-eqz v0, :cond_0

    .line 4841
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->current:Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    invoke-interface {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->protect()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4842
    const-string/jumbo v0, "2"

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->actLink:Ljava/lang/String;

    .line 4843
    invoke-direct {p0, v2, v3}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->murder(ZZ)V

    .line 4853
    :cond_0
    :goto_0
    return-void

    .line 4846
    :cond_1
    const-string/jumbo v0, "delayed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 4848
    const-string/jumbo v0, "-AMNET-ALT-SSL"

    const-string/jumbo v1, "The link should be protected when it is needed."

    invoke-direct {p0, v2, v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->record(ILjava/lang/String;Ljava/lang/String;)V

    .line 4851
    iput-boolean v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->delayed:Z

    goto :goto_0
.end method

.method private shiftUser(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 4768
    .line 4771
    const-string/jumbo v0, "login"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    move v1, v2

    move v0, v2

    .line 4777
    :goto_0
    if-eqz v0, :cond_0

    .line 4778
    const-string/jumbo v4, "-AMNET-ALT-USER"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "The user acts "

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_2

    const-string/jumbo v0, "login"

    :goto_1
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, "."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v4, v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->record(ILjava/lang/String;Ljava/lang/String;)V

    .line 4784
    invoke-static {p2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->parse(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4785
    iget-object v4, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->current:Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    aget-object v5, v0, v3

    aget-object v0, v0, v2

    invoke-interface {v4, v1, v5, v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->postUserStatusReq(ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4786
    const-string/jumbo v0, "2"

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->actLink:Ljava/lang/String;

    .line 4787
    invoke-direct {p0, v2, v3}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->murder(ZZ)V

    .line 4790
    :cond_0
    return-void

    .line 4773
    :cond_1
    const-string/jumbo v0, "logout"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    move v1, v3

    move v0, v3

    .line 4774
    goto :goto_0

    .line 4778
    :cond_2
    const-string/jumbo v0, "logout"

    goto :goto_1

    :cond_3
    move v1, v3

    move v0, v2

    goto :goto_0
.end method

.method private static shortcut(Ljava/lang/String;Z)[Lcom/alipay/mobile/common/transportext/amnet/Amnet$ServerAddr;
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 6733
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v3

    .line 6775
    :goto_0
    return-object v0

    .line 6738
    :cond_1
    const-string/jumbo v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 6739
    if-eqz v5, :cond_2

    array-length v0, v5

    if-nez v0, :cond_3

    :cond_2
    move-object v0, v3

    .line 6740
    goto :goto_0

    :cond_3
    move v0, v1

    move v2, v1

    .line 6745
    :goto_1
    array-length v4, v5

    if-ge v0, v4, :cond_5

    .line 6746
    aget-object v4, v5, v0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v0

    .line 6747
    aget-object v4, v5, v0

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 6748
    aput-object v3, v5, v0

    .line 6745
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 6750
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 6754
    :cond_5
    if-nez v2, :cond_6

    move-object v0, v3

    .line 6755
    goto :goto_0

    .line 6759
    :cond_6
    new-array v4, v2, [Lcom/alipay/mobile/common/transportext/amnet/Amnet$ServerAddr;

    move v0, v1

    move v2, v1

    .line 6762
    :goto_3
    array-length v6, v5

    if-ge v0, v6, :cond_8

    .line 6763
    aget-object v6, v5, v0

    if-eqz v6, :cond_7

    .line 6764
    aget-object v6, v5, v0

    invoke-static {v6, p1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->parse(Ljava/lang/String;Z)Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;

    move-result-object v6

    .line 6765
    new-instance v7, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ServerAddr;

    invoke-direct {v7, v3}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ServerAddr;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet$1;)V

    aput-object v7, v4, v2

    .line 6766
    aget-object v7, v4, v2

    iget-object v8, v6, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;->ip:Ljava/lang/String;

    iput-object v8, v7, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ServerAddr;->ip:Ljava/lang/String;

    .line 6767
    aget-object v7, v4, v2

    iget v6, v6, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;->port:I

    iput v6, v7, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ServerAddr;->port:I

    .line 6768
    aget-object v6, v4, v2

    const/4 v7, -0x1

    iput v7, v6, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ServerAddr;->score:I

    .line 6769
    aget-object v6, v4, v2

    const/4 v7, 0x5

    iput v7, v6, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ServerAddr;->limit:I

    .line 6770
    aget-object v6, v4, v2

    iput v1, v6, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ServerAddr;->count:I

    .line 6771
    add-int/lit8 v2, v2, 0x1

    .line 6762
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    move-object v0, v4

    .line 6775
    goto :goto_0
.end method

.method private static sysProxy(Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;Z)Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;
    .locals 8

    .prologue
    const/16 v7, 0xa

    .line 6855
    const/4 v2, 0x0

    .line 6856
    if-eqz p1, :cond_1

    const-string/jumbo v0, "https://"

    .line 6858
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;->ip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;->port:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6860
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 6861
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v0

    .line 6862
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 6863
    const/16 v0, 0xa

    new-array v4, v0, [Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;

    .line 6866
    const/4 v1, 0x0

    .line 6868
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6869
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Proxy;

    .line 6870
    if-eqz v0, :cond_0

    .line 6871
    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 6872
    if-eqz v0, :cond_5

    .line 6873
    new-instance v5, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;

    invoke-direct {v5}, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;-><init>()V

    aput-object v5, v4, v1

    .line 6874
    aget-object v5, v4, v1

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;->ip:Ljava/lang/String;

    .line 6875
    aget-object v5, v4, v1

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    iput v0, v5, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;->port:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 6876
    add-int/lit8 v0, v1, 0x1

    if-eq v0, v7, :cond_3

    :goto_2
    move v1, v0

    .line 6877
    goto :goto_1

    .line 6856
    :cond_1
    const-string/jumbo v0, "http://"

    goto :goto_0

    :cond_2
    move v0, v1

    .line 6883
    :cond_3
    if-eqz v0, :cond_4

    .line 6884
    :try_start_1
    invoke-static {v4, v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->pickOne([Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;I)Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 6889
    :goto_3
    return-object v0

    :catch_0
    move-exception v0

    :cond_4
    move-object v0, v2

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method public static taste(Lcom/alipay/mobile/common/transportext/amnet/Mercury;Lcom/alipay/mobile/common/transportext/amnet/Tasting;Ljava/lang/String;Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/common/transportext/amnet/Mercury;",
            "Lcom/alipay/mobile/common/transportext/amnet/Tasting;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 573
    if-nez p2, :cond_1

    .line 574
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/alipay/mobile/common/transportext/amnet/Tasting;->indicate(Z)V

    .line 634
    :cond_0
    :goto_0
    return-void

    .line 576
    :cond_1
    const/4 v2, -0x1

    .line 577
    const/4 v3, 0x0

    .line 578
    const/4 v4, 0x0

    .line 580
    if-eqz p3, :cond_2

    .line 581
    const-string/jumbo v0, "security"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->security(Ljava/lang/String;)I

    move-result v2

    .line 582
    const-string/jumbo v0, "certificate-name"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->safety(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 583
    const-string/jumbo v0, "top-CA"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->safety(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 584
    const/4 v0, -0x3

    if-ne v2, v0, :cond_4

    .line 585
    const/4 v2, 0x1

    .line 591
    :cond_2
    :goto_1
    const/4 v0, -0x1

    if-eq v2, v0, :cond_5

    const/4 v0, 0x1

    .line 592
    :goto_2
    invoke-static {p2, v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->parse(Ljava/lang/String;Z)Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;

    move-result-object v1

    .line 593
    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->sysProxy(Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;Z)Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;

    move-result-object v8

    .line 595
    sget-object v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->explorer:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;

    if-eqz v0, :cond_6

    .line 596
    const/4 v0, 0x0

    :goto_3
    sget-object v5, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->explorer:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;

    array-length v5, v5

    if-ge v0, v5, :cond_6

    .line 597
    sget-object v5, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->explorer:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;

    aget-object v5, v5, v0

    if-eqz v5, :cond_3

    .line 598
    sget-object v5, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->explorer:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;->stop()V

    .line 599
    sget-object v5, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->explorer:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;

    const/4 v6, 0x0

    aput-object v6, v5, v0

    .line 596
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 586
    :cond_4
    const/4 v0, -0x2

    if-ne v2, v0, :cond_2

    .line 587
    const/4 v2, 0x0

    goto :goto_1

    .line 591
    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    .line 604
    :cond_6
    const/4 v0, 0x2

    new-array v9, v0, [Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;

    .line 605
    sput-object v9, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->explorer:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;

    const/4 v10, 0x0

    new-instance v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;

    const/4 v5, 0x0

    move-object v6, p1

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;ILjava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;Lcom/alipay/mobile/common/transportext/amnet/Tasting;Lcom/alipay/mobile/common/transportext/amnet/Mercury;)V

    aput-object v0, v9, v10

    .line 612
    sget-object v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->explorer:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;

    const/4 v5, 0x0

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;->start()Z

    move-result v0

    if-nez v0, :cond_7

    .line 613
    sget-object v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->explorer:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput-object v6, v0, v5

    .line 616
    :cond_7
    if-eqz v8, :cond_8

    .line 617
    sget-object v9, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->explorer:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;

    const/4 v10, 0x1

    new-instance v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;

    move-object v5, v8

    move-object v6, p1

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;ILjava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;Lcom/alipay/mobile/common/transportext/amnet/Tasting;Lcom/alipay/mobile/common/transportext/amnet/Mercury;)V

    aput-object v0, v9, v10

    .line 624
    sget-object v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->explorer:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;->start()Z

    move-result v0

    if-nez v0, :cond_8

    .line 625
    sget-object v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->explorer:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 629
    :cond_8
    sget-object v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->explorer:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->explorer:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    .line 630
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->explorer:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;

    .line 631
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/alipay/mobile/common/transportext/amnet/Tasting;->indicate(Z)V

    goto/16 :goto_0
.end method

.method private unload()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 4601
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->tmrRetry:Lcom/alipay/mobile/common/transportext/amnet/Amnet$RetryTmr;

    const-string/jumbo v1, "reconnect"

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->closeTimer(Lcom/alipay/mobile/common/transportext/mnet/Plan;Ljava/lang/String;)V

    .line 4602
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->current:Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    if-eqz v0, :cond_1

    .line 4603
    invoke-direct {p0, v3, v3}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->murder(ZZ)V

    .line 4619
    :cond_0
    return-void

    .line 4604
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->candidate:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    if-eqz v0, :cond_0

    .line 4605
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->candidate:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    .line 4606
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->tmrLink:Lcom/alipay/mobile/common/transportext/amnet/Amnet$LinkTmr;

    const-string/jumbo v1, "connect"

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->closeTimer(Lcom/alipay/mobile/common/transportext/mnet/Plan;Ljava/lang/String;)V

    .line 4607
    invoke-direct {p0, v3}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->change(I)V

    .line 4608
    iput-object v4, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->candidate:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    .line 4610
    array-length v0, v2

    .line 4611
    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-eqz v0, :cond_0

    .line 4612
    aget-object v0, v2, v1

    .line 4613
    aput-object v4, v2, v1

    .line 4614
    if-eqz v0, :cond_2

    .line 4615
    invoke-interface {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->stop()V

    :cond_2
    move v0, v1

    .line 4617
    goto :goto_0
.end method

.method private unstable(Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;J)Z
    .locals 4

    .prologue
    .line 6624
    iget-wide v0, p1, Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;->stamp:J

    iget-wide v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->stampCfg:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p1, Lcom/alipay/mobile/common/transportext/amnet/Amnet$IntelligentHb;->stamp:J

    sub-long v0, p2, v0

    const-wide/32 v2, 0x240c8400

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private wake()V
    .locals 3

    .prologue
    .line 4650
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->tmrRetry:Lcom/alipay/mobile/common/transportext/amnet/Amnet$RetryTmr;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$RetryTmr;->closed()Z

    move-result v0

    .line 4651
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->actLink:Ljava/lang/String;

    const-string/jumbo v2, "4"

    if-eq v1, v2, :cond_0

    .line 4652
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->tmrRetry:Lcom/alipay/mobile/common/transportext/amnet/Amnet$RetryTmr;

    const-string/jumbo v1, "reconnect"

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->closeTimer(Lcom/alipay/mobile/common/transportext/mnet/Plan;Ljava/lang/String;)V

    .line 4653
    const/4 v0, 0x1

    .line 4656
    :cond_0
    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->load()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4657
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->prepare()V

    .line 4659
    :cond_1
    return-void
.end method


# virtual methods
.method public activate(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 69
    iget-boolean v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->ripe:Z

    .line 70
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->ripe:Z

    if-eqz v0, :cond_c

    .line 71
    const/4 v0, 0x1

    const-string/jumbo v1, "-AMNET-LINK"

    const-string/jumbo v3, "The story continues."

    invoke-direct {p0, v0, v1, v3}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->record(ILjava/lang/String;Ljava/lang/String;)V

    .line 177
    :cond_0
    const-string/jumbo v0, "1"

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->actLink:Ljava/lang/String;

    .line 178
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->unload()V

    .line 179
    if-nez p1, :cond_1

    .line 180
    if-nez v2, :cond_1

    .line 181
    const-string/jumbo p1, "127.0.0.1"

    .line 185
    :cond_1
    if-nez p2, :cond_2

    .line 186
    if-nez v2, :cond_2

    .line 187
    const-string/jumbo p2, "127.0.0.1"

    .line 191
    :cond_2
    if-nez p3, :cond_18

    .line 192
    if-nez v2, :cond_3

    .line 193
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->sslLong:I

    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->certLong:Ljava/lang/String;

    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->caLong:Ljava/lang/String;

    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->addrLong:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$ServerAddr;

    .line 197
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->bakLong:I

    .line 208
    :cond_3
    :goto_0
    if-nez p4, :cond_1a

    .line 209
    if-nez v2, :cond_4

    .line 210
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->sslShort:I

    .line 211
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->certShort:Ljava/lang/String;

    .line 212
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->caShort:Ljava/lang/String;

    .line 213
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->addrShort:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$ServerAddr;

    .line 214
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->bakShort:I

    .line 225
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->addrLong:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$ServerAddr;

    if-nez v0, :cond_5

    .line 226
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/alipay/mobile/common/transportext/amnet/Amnet$ServerAddr;

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->addrLong:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$ServerAddr;

    .line 229
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->addrShort:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$ServerAddr;

    if-nez v0, :cond_6

    .line 230
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/alipay/mobile/common/transportext/amnet/Amnet$ServerAddr;

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->addrShort:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$ServerAddr;

    .line 233
    :cond_6
    if-eqz p1, :cond_7

    .line 234
    iget v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->sslLong:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1c

    const/4 v0, 0x1

    :goto_2
    invoke-static {p1, v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->parse(Ljava/lang/String;Z)Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->hostLong:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;

    .line 237
    :cond_7
    if-eqz p2, :cond_8

    .line 238
    iget v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->sslShort:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1d

    const/4 v0, 0x1

    :goto_3
    invoke-static {p2, v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->parse(Ljava/lang/String;Z)Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->hostShort:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;

    .line 241
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->resendable:Z

    .line 242
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->clear()V

    .line 244
    if-eqz p5, :cond_9

    .line 245
    invoke-virtual {p5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p5

    .line 246
    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 247
    const/4 p5, 0x0

    .line 251
    :cond_9
    if-eqz p6, :cond_a

    .line 252
    invoke-virtual {p6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p6

    .line 253
    invoke-virtual {p6}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 254
    const/4 p6, 0x0

    .line 258
    :cond_a
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->probing:Z

    .line 259
    invoke-direct {p0, p5, p6}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->shiftNet(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iput-boolean v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->probing:Z

    .line 261
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->allowedAct:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->allowedHb:Z

    if-eqz v0, :cond_b

    .line 262
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->load()Z

    move-result v0

    if-nez v0, :cond_b

    .line 263
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->prepare()V

    .line 267
    :cond_b
    const/4 v0, 0x1

    return v0

    .line 73
    :cond_c
    const/4 v0, 0x1

    const-string/jumbo v1, "-AMNET-LINK"

    const-string/jumbo v3, "The story begins."

    invoke-direct {p0, v0, v1, v3}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->record(ILjava/lang/String;Ljava/lang/String;)V

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->ripe:Z

    .line 75
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->seqCur:I

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->stampSeq:J

    .line 77
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->cfgAddress()V

    .line 78
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->cfgReconnect()V

    .line 79
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->cfgDetect()V

    .line 81
    const-string/jumbo v0, "/cfg-heartbeat"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->getBig(Ljava/lang/String;Z)Ljava/lang/Long;

    move-result-object v0

    .line 82
    if-nez v0, :cond_17

    .line 83
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->stampCfg:J

    .line 88
    :goto_4
    const-string/jumbo v0, "/misc/reset"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->getInt(Ljava/lang/String;Z)Ljava/lang/Integer;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_e

    .line 92
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 93
    if-eqz v0, :cond_d

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 96
    :cond_d
    iput v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->resetCur:I

    .line 100
    :cond_e
    const-string/jumbo v0, "/misc/pending"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->getInt(Ljava/lang/String;Z)Ljava/lang/Integer;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_f

    .line 103
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 104
    if-lez v0, :cond_f

    const/16 v1, 0x12c

    if-gt v0, v1, :cond_f

    .line 107
    iput v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->pendingCur:I

    .line 111
    :cond_f
    const-string/jumbo v0, "/misc/log"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->getInt(Ljava/lang/String;Z)Ljava/lang/Integer;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_11

    .line 113
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 114
    if-eqz v0, :cond_10

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    const/4 v1, 0x2

    if-eq v0, v1, :cond_10

    const/4 v1, 0x3

    if-eq v0, v1, :cond_10

    const/4 v1, 0x4

    if-ne v0, v1, :cond_11

    .line 120
    :cond_10
    iput v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->levelCur:I

    .line 124
    :cond_11
    const-string/jumbo v0, "/misc/compress"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->getInt(Ljava/lang/String;Z)Ljava/lang/Integer;

    move-result-object v0

    .line 126
    if-eqz v0, :cond_13

    .line 127
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 128
    if-eqz v0, :cond_12

    const/4 v1, 0x1

    if-eq v0, v1, :cond_12

    const/4 v1, 0x2

    if-ne v0, v1, :cond_13

    .line 132
    :cond_12
    iput v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->zipCur:I

    .line 136
    :cond_13
    const-string/jumbo v0, "/flash/holding"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->getInt(Ljava/lang/String;Z)Ljava/lang/Integer;

    move-result-object v0

    .line 138
    if-eqz v0, :cond_14

    .line 139
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 140
    if-lez v0, :cond_14

    const/16 v1, 0x2710

    if-gt v0, v1, :cond_14

    .line 143
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->valBrk:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Flash;

    iput v0, v1, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Flash;->holding:I

    .line 147
    :cond_14
    const-string/jumbo v0, "/flash/count"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->getInt(Ljava/lang/String;Z)Ljava/lang/Integer;

    move-result-object v0

    .line 149
    if-eqz v0, :cond_15

    .line 150
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 151
    if-lez v0, :cond_15

    const/16 v1, 0x64

    if-gt v0, v1, :cond_15

    .line 154
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->valBrk:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Flash;

    iput v0, v1, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Flash;->count:I

    .line 158
    :cond_15
    const-string/jumbo v0, "/flash/period"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->getInt(Ljava/lang/String;Z)Ljava/lang/Integer;

    move-result-object v0

    .line 160
    if-eqz v0, :cond_16

    .line 161
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 162
    if-lez v0, :cond_16

    const/16 v1, 0x3e8

    if-gt v0, v1, :cond_16

    .line 165
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->valBrk:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Flash;

    iput v0, v1, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Flash;->period:I

    .line 169
    :cond_16
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->stampAct:J

    .line 170
    const/4 v0, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->tmCfrm:[I

    .line 172
    const/4 v0, 0x0

    :goto_5
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->tmCfrm:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->tmCfrm:[I

    const/4 v3, -0x1

    aput v3, v1, v0

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 85
    :cond_17
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->stampCfg:J

    goto/16 :goto_4

    .line 200
    :cond_18
    const-string/jumbo v0, "security"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->security(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->sslLong:I

    .line 201
    const-string/jumbo v0, "certificate-name"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->safety(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->certLong:Ljava/lang/String;

    .line 202
    const-string/jumbo v0, "top-CA"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->safety(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->caLong:Ljava/lang/String;

    .line 203
    const-string/jumbo v0, "server-address"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->sslLong:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_19

    const/4 v1, 0x1

    :goto_6
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->shortcut(Ljava/lang/String;Z)[Lcom/alipay/mobile/common/transportext/amnet/Amnet$ServerAddr;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->addrLong:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$ServerAddr;

    .line 205
    iget v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->sslLong:I

    iput v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->bakLong:I

    goto/16 :goto_0

    .line 203
    :cond_19
    const/4 v1, 0x0

    goto :goto_6

    .line 217
    :cond_1a
    const-string/jumbo v0, "security"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->security(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->sslShort:I

    .line 218
    const-string/jumbo v0, "certificate-name"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->safety(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->certShort:Ljava/lang/String;

    .line 219
    const-string/jumbo v0, "top-CA"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->safety(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->caShort:Ljava/lang/String;

    .line 220
    const-string/jumbo v0, "server-address"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->sslShort:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1b

    const/4 v1, 0x1

    :goto_7
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->shortcut(Ljava/lang/String;Z)[Lcom/alipay/mobile/common/transportext/amnet/Amnet$ServerAddr;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->addrShort:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$ServerAddr;

    .line 222
    iget v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->sslShort:I

    iput v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->bakShort:I

    goto/16 :goto_1

    .line 220
    :cond_1b
    const/4 v1, 0x0

    goto :goto_7

    .line 234
    :cond_1c
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 238
    :cond_1d
    const/4 v0, 0x0

    goto/16 :goto_3
.end method

.method public alert(JJ)V
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    .line 509
    cmp-long v0, p1, v2

    if-ltz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->account:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 511
    iget v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->resetCur:I

    if-ne v1, v4, :cond_0

    cmp-long v1, p3, v2

    if-ltz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->current:Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    if-eqz v0, :cond_0

    .line 516
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->stampAct:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x3b9aca00

    div-long/2addr v0, v2

    .line 517
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->getHbCfg()Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;

    move-result-object v2

    .line 519
    iget v2, v2, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;->silence:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 520
    const/4 v0, 0x2

    const-string/jumbo v1, "-AMNET-ACTIVITY"

    const-string/jumbo v2, "It\'s too long to wait for some network data."

    invoke-direct {p0, v0, v1, v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->record(ILjava/lang/String;Ljava/lang/String;)V

    .line 523
    const-string/jumbo v0, "2"

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->actLink:Ljava/lang/String;

    .line 524
    invoke-direct {p0, v4, v4}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->murder(ZZ)V

    .line 528
    :cond_0
    return-void
.end method

.method public alter(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 358
    if-eqz p2, :cond_0

    .line 359
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 360
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object p2, v0

    .line 365
    :cond_0
    if-eqz p3, :cond_1

    .line 366
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    .line 367
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object p3, v0

    .line 372
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Something changes. (type="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 373
    if-eqz p2, :cond_2

    .line 374
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ", major=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 377
    :cond_2
    if-eqz p3, :cond_3

    .line 378
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ", minor=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 381
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 382
    const-string/jumbo v3, "-AMNET-ALT"

    invoke-direct {p0, v1, v3, v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->record(ILjava/lang/String;Ljava/lang/String;)V

    .line 384
    if-nez p1, :cond_6

    .line 385
    invoke-direct {p0, p2, p3}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->shiftNet(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->probing:Z

    if-eqz v0, :cond_5

    .line 387
    iput-boolean v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->probing:Z

    .line 388
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->allowedAct:Z

    if-nez v0, :cond_4

    .line 389
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->unload()V

    .line 502
    :cond_4
    :goto_0
    return-void

    .line 392
    :cond_5
    const-string/jumbo v0, "2"

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->actLink:Ljava/lang/String;

    .line 393
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->unload()V

    .line 394
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->allowedAct:Z

    if-eqz v0, :cond_4

    .line 395
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->load()Z

    move-result v0

    if-nez v0, :cond_4

    .line 396
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->prepare()V

    goto :goto_0

    .line 400
    :cond_6
    if-ne p1, v1, :cond_9

    .line 401
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->foreground()Z

    move-result v0

    .line 402
    if-eqz p2, :cond_7

    .line 404
    const-string/jumbo v3, "background"

    invoke-virtual {p2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_8

    .line 407
    const-string/jumbo v3, "-AMNET-ALT-GROUND"

    const-string/jumbo v4, "I\'m in background."

    invoke-direct {p0, v1, v3, v4}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->record(ILjava/lang/String;Ljava/lang/String;)V

    .line 410
    iput-boolean v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->background:Z

    .line 420
    :cond_7
    :goto_1
    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->shiftGnd(Z)Z

    move-result v0

    if-nez v0, :cond_4

    .line 421
    const-string/jumbo v0, "2"

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->actLink:Ljava/lang/String;

    .line 422
    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->murder(ZZ)V

    goto :goto_0

    .line 411
    :cond_8
    const-string/jumbo v3, "foreground"

    invoke-virtual {p2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_7

    .line 414
    const-string/jumbo v3, "-AMNET-ALT-GROUND"

    const-string/jumbo v4, "I\'m in foreground."

    invoke-direct {p0, v1, v3, v4}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->record(ILjava/lang/String;Ljava/lang/String;)V

    .line 417
    iput-boolean v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->background:Z

    goto :goto_1

    .line 424
    :cond_9
    const/4 v0, 0x2

    if-ne p1, v0, :cond_c

    .line 425
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->foreground()Z

    move-result v0

    .line 426
    if-eqz p2, :cond_a

    .line 428
    const-string/jumbo v3, "disable"

    invoke-virtual {p2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_b

    .line 430
    const-string/jumbo v3, "-AMNET-ALT-SCREEN"

    const-string/jumbo v4, "The screen is locked."

    invoke-direct {p0, v1, v3, v4}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->record(ILjava/lang/String;Ljava/lang/String;)V

    .line 433
    iput-boolean v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->disable:Z

    .line 442
    :cond_a
    :goto_2
    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->shiftGnd(Z)Z

    move-result v0

    if-nez v0, :cond_4

    .line 443
    const-string/jumbo v0, "2"

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->actLink:Ljava/lang/String;

    .line 444
    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->murder(ZZ)V

    goto/16 :goto_0

    .line 434
    :cond_b
    const-string/jumbo v3, "enable"

    invoke-virtual {p2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_a

    .line 436
    const-string/jumbo v3, "-AMNET-ALT-SCREEN"

    const-string/jumbo v4, "The screen is unlocked."

    invoke-direct {p0, v1, v3, v4}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->record(ILjava/lang/String;Ljava/lang/String;)V

    .line 439
    iput-boolean v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->disable:Z

    goto :goto_2

    .line 446
    :cond_c
    const/4 v0, 0x3

    if-ne p1, v0, :cond_e

    .line 448
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->foreground()Z

    move-result v3

    .line 450
    if-eqz p2, :cond_13

    .line 452
    const-string/jumbo v0, "dead"

    invoke-virtual {p2, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_d

    .line 455
    const-string/jumbo v0, "-AMNET-ALT-PROCESS"

    const-string/jumbo v4, "The process is dead."

    invoke-direct {p0, v1, v0, v4}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->record(ILjava/lang/String;Ljava/lang/String;)V

    .line 458
    iput-boolean v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->missing:Z

    move v0, v1

    .line 475
    :goto_3
    if-eqz v0, :cond_4

    .line 476
    invoke-direct {p0, v3}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->shiftGnd(Z)Z

    move-result v0

    if-nez v0, :cond_4

    .line 477
    const-string/jumbo v0, "2"

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->actLink:Ljava/lang/String;

    .line 478
    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->murder(ZZ)V

    goto/16 :goto_0

    .line 459
    :cond_d
    const-string/jumbo v0, "live"

    invoke-virtual {p2, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_13

    .line 462
    const-string/jumbo v0, "-AMNET-ALT-PROCESS"

    const-string/jumbo v4, "The process is live."

    invoke-direct {p0, v1, v0, v4}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->record(ILjava/lang/String;Ljava/lang/String;)V

    .line 465
    iput-boolean v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->missing:Z

    .line 466
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->current:Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    if-eqz v0, :cond_13

    .line 467
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->current:Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    invoke-interface {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->protect()Z

    move-result v0

    if-nez v0, :cond_13

    .line 469
    const-string/jumbo v0, "2"

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->actLink:Ljava/lang/String;

    .line 470
    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->murder(ZZ)V

    move v0, v2

    goto :goto_3

    .line 481
    :cond_e
    const/4 v0, 0x4

    if-ne p1, v0, :cond_f

    .line 482
    if-eqz p2, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->current:Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    if-eqz v0, :cond_4

    .line 483
    invoke-direct {p0, p2, p3}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->shiftUser(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 485
    :cond_f
    const/4 v0, 0x5

    if-ne p1, v0, :cond_10

    .line 486
    if-eqz p2, :cond_4

    .line 487
    invoke-direct {p0, p2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->shiftHb(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 489
    :cond_10
    const/4 v0, 0x6

    if-ne p1, v0, :cond_11

    .line 490
    if-eqz p2, :cond_4

    .line 491
    invoke-direct {p0, p2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->shiftSsl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 493
    :cond_11
    const/4 v0, 0x7

    if-ne p1, v0, :cond_12

    .line 494
    if-eqz p2, :cond_4

    .line 495
    invoke-direct {p0, p2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->shiftRtt(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 497
    :cond_12
    const/16 v0, 0x8

    if-ne p1, v0, :cond_4

    .line 498
    if-eqz p2, :cond_4

    if-eqz p3, :cond_4

    .line 499
    invoke-direct {p0, p2, p3}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->shiftAddr(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_13
    move v0, v1

    goto :goto_3
.end method

.method public inactivate()V
    .locals 3

    .prologue
    .line 563
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->unload()V

    .line 564
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->clear()V

    .line 565
    const/4 v0, 0x1

    const-string/jumbo v1, "-AMNET-LINK"

    const-string/jumbo v2, "The story ends."

    invoke-direct {p0, v0, v1, v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->record(ILjava/lang/String;Ljava/lang/String;)V

    .line 566
    return-void
.end method

.method public launch(Lcom/alipay/mobile/common/transportext/amnet/NetTest;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 532
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->primary:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->sslLong:I

    .line 533
    :goto_0
    iget-boolean v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->primary:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->hostLong:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;

    .line 534
    :goto_1
    const/4 v4, -0x1

    if-eq v0, v4, :cond_3

    move v0, v2

    :goto_2
    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->sysProxy(Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;Z)Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;

    move-result-object v1

    .line 535
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->infTry:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Detect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->infTry:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Detect;

    iget-object v0, v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Detect;->inf:[Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->infTry:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Detect;

    iget-object v0, v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Detect;->inf:[Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;

    array-length v0, v0

    if-nez v0, :cond_4

    .line 539
    :cond_0
    new-array v4, v2, [Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;

    .line 540
    aget-object v0, v4, v3

    const-string/jumbo v5, "www.baidu.com"

    iput-object v5, v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;->domain:Ljava/lang/String;

    .line 541
    aget-object v0, v4, v3

    iput v3, v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;->protocol:I

    .line 542
    aget-object v0, v4, v3

    const-string/jumbo v5, "HEAD / HTTP/1.1\r\nHost: www.baidu.com\r\nContent-Length: 0\r\n\r\n"

    iput-object v5, v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;->request:Ljava/lang/String;

    .line 546
    aget-object v0, v4, v3

    const-string/jumbo v5, "HTTP/1.1 200 "

    iput-object v5, v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;->response:Ljava/lang/String;

    .line 547
    aget-object v0, v4, v3

    const/16 v5, 0x1e

    iput v5, v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;->waiting:I

    .line 548
    aget-object v0, v4, v3

    iput v2, v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;->trying:I

    .line 553
    :goto_3
    const-wide/16 v2, 0x0

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->launch(Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;J[Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;Lcom/alipay/mobile/common/transportext/amnet/NetTest;)V

    .line 554
    return-void

    .line 532
    :cond_1
    iget v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->sslShort:I

    goto :goto_0

    .line 533
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->hostShort:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Address;

    goto :goto_1

    :cond_3
    move v0, v3

    .line 534
    goto :goto_2

    .line 550
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->infTry:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Detect;

    iget-object v4, v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Detect;->inf:[Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;

    goto :goto_3
.end method

.method public post(JZZZBLjava/util/Map;[B)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZZZB",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)V"
        }
    .end annotation

    .prologue
    .line 279
    const-wide/16 v4, 0x0

    .line 280
    if-eqz p3, :cond_0

    iget-boolean v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->resendable:Z

    if-eqz v1, :cond_0

    .line 281
    iget-wide v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->stampSeq:J

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 282
    const/16 v3, 0x18

    shl-long/2addr v1, v3

    .line 283
    iget v3, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->seqCur:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->seqCur:I

    int-to-long v3, v3

    add-long v4, v1, v3

    .line 286
    :cond_0
    const/4 v10, 0x0

    .line 287
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->current:Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->sendable:Z

    if-eqz v1, :cond_7

    .line 288
    if-eqz p4, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->current:Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    invoke-interface {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->protect()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 289
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->current:Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    move-wide v2, p1

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-interface/range {v1 .. v9}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;->postDataReq(JJZBLjava/util/Map;[B)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 296
    const/4 v1, 0x1

    .line 297
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_2

    .line 298
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->account:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    :cond_2
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-eqz v2, :cond_3

    .line 302
    new-instance v7, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Data;

    const/4 v2, 0x0

    invoke-direct {v7, p0, v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Data;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$1;)V

    .line 303
    iput-wide p1, v7, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Data;->receipt:J

    .line 304
    iput-wide v4, v7, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Data;->sequence:J

    .line 305
    move/from16 v0, p4

    iput-boolean v0, v7, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Data;->secret:Z

    .line 306
    move/from16 v0, p5

    iput-boolean v0, v7, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Data;->nearing:Z

    .line 307
    move/from16 v0, p6

    iput-byte v0, v7, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Data;->channel:B

    .line 308
    move-object/from16 v0, p7

    iput-object v0, v7, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Data;->header:Ljava/util/Map;

    .line 309
    move-object/from16 v0, p8

    iput-object v0, v7, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Data;->body:[B

    .line 310
    const/4 v2, 0x1

    iput-boolean v2, v7, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Data;->cfrm:Z

    .line 312
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->importance:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    .line 313
    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->importance:Ljava/util/LinkedList;

    invoke-virtual {v3, v7}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 314
    const/4 v3, 0x1

    const-string/jumbo v6, "-AMNET-DATA"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "No."

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " is sent at once."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v3, v6, v8}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->record(ILjava/lang/String;Ljava/lang/String;)V

    .line 319
    if-eqz v2, :cond_3

    .line 320
    const-string/jumbo v8, "data-package"

    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->getResendCfg()I

    move-result v2

    invoke-static {v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->sToMs(I)J

    move-result-wide v9

    const/4 v11, 0x0

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->openTimer(Lcom/alipay/mobile/common/transportext/mnet/Plan;Ljava/lang/String;JLcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;)Z

    .line 338
    :cond_3
    :goto_0
    if-nez v1, :cond_4

    .line 339
    new-instance v2, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Data;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Data;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$1;)V

    .line 340
    iput-wide p1, v2, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Data;->receipt:J

    .line 341
    iput-wide v4, v2, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Data;->sequence:J

    .line 342
    move/from16 v0, p4

    iput-boolean v0, v2, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Data;->secret:Z

    .line 343
    move/from16 v0, p5

    iput-boolean v0, v2, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Data;->nearing:Z

    .line 344
    move/from16 v0, p6

    iput-byte v0, v2, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Data;->channel:B

    .line 345
    move-object/from16 v0, p7

    iput-object v0, v2, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Data;->header:Ljava/util/Map;

    .line 346
    move-object/from16 v0, p8

    iput-object v0, v2, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Data;->body:[B

    .line 347
    const/4 v1, 0x0

    iput-boolean v1, v2, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Data;->cfrm:Z

    .line 348
    const-string/jumbo v3, "data-package"

    iget v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->pendingCur:I

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->sToMs(I)J

    move-result-wide v4

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->openTimer(Lcom/alipay/mobile/common/transportext/mnet/Plan;Ljava/lang/String;JLcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;)Z

    .line 349
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->pending:Ljava/util/LinkedList;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 351
    :cond_4
    return-void

    .line 327
    :cond_5
    const-string/jumbo v1, "2"

    iput-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->actLink:Ljava/lang/String;

    .line 328
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->murder(ZZ)V

    move v1, v10

    goto :goto_0

    .line 331
    :cond_6
    const-string/jumbo v1, "2"

    iput-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->actLink:Ljava/lang/String;

    .line 332
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->murder(ZZ)V

    move v1, v10

    goto :goto_0

    .line 334
    :cond_7
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->current:Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->candidate:[Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;

    if-nez v1, :cond_8

    iget-boolean v1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->allowedAct:Z

    if-eqz v1, :cond_8

    .line 335
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->wake()V

    :cond_8
    move v1, v10

    goto :goto_0
.end method

.method public query()I
    .locals 1

    .prologue
    .line 558
    iget v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->stateCur:I

    return v0
.end method

.method public register(BLcom/alipay/mobile/common/transportext/amnet/Channel;)V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->service:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    return-void
.end method

.method public register(Lcom/alipay/mobile/common/transportext/amnet/Linkage;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->linkage:Lcom/alipay/mobile/common/transportext/amnet/Linkage;

    .line 36
    return-void
.end method

.method public register(Lcom/alipay/mobile/common/transportext/amnet/Mercury;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->handler:Lcom/alipay/mobile/common/transportext/amnet/Mercury;

    .line 48
    return-void
.end method

.method public register(Lcom/alipay/mobile/common/transportext/amnet/Notepad;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->notepad:Lcom/alipay/mobile/common/transportext/amnet/Notepad;

    .line 26
    return-void
.end method

.method public register(Lcom/alipay/mobile/common/transportext/amnet/Storage;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->storage:Lcom/alipay/mobile/common/transportext/amnet/Storage;

    .line 31
    return-void
.end method

.method public unregister(B)V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet;->service:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    return-void
.end method
