.class public Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener;
.super Lcom/alipay/mobile/common/amnet/api/AmnetListenerAdpter;
.source "AmnetMonitorLoggerListener.java"


# static fields
.field private static final ALIVE_TIMING_KEY:Ljava/lang/String; = "al"

.field private static final ATTEMP_COUNT_KEY:Ljava/lang/String; = "ac"

.field private static final ATTEMP_DURATION_KEY:Ljava/lang/String; = "ad"

.field private static final CONN_TIMING_KEY:Ljava/lang/String; = "conn"

.field private static final DNS_TIMING_KEY:Ljava/lang/String; = "dns"

.field private static final FIRST_FRAME_KEY:Ljava/lang/String; = "ff"

.field private static final HANDSHAKE_TIMING_KEY:Ljava/lang/String; = "hs"

.field private static final INIT_OK_KEY:Ljava/lang/String; = "init"

.field private static final MMTP_REPORT_KEY_MAP:Ljava/util/Map;
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

.field private static final ZERO_RTT_KEY:Ljava/lang/String; = "0rtt"


# instance fields
.field private connStartTime:J

.field private initTs:J

.field private ipLocal:Ljava/lang/String;

.field private ipRemote:Ljava/lang/String;

.field private lastLocalKey:Ljava/lang/String;

.field private logModel:Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;

.field private portLocal:Ljava/lang/String;

.field private portRemote:Ljava/lang/String;

.field private repeatCoolingTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 69
    sput-object v0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener;->MMTP_REPORT_KEY_MAP:Ljava/util/Map;

    const-string/jumbo v1, "DNS"

    const-string/jumbo v2, "dns"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener;->MMTP_REPORT_KEY_MAP:Ljava/util/Map;

    const-string/jumbo v1, "native TCP connect"

    const-string/jumbo v2, "conn"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener;->MMTP_REPORT_KEY_MAP:Ljava/util/Map;

    const-string/jumbo v1, "native SSL handshake"

    const-string/jumbo v2, "hs"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener;->MMTP_REPORT_KEY_MAP:Ljava/util/Map;

    const-string/jumbo v1, "link life"

    const-string/jumbo v2, "al"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener;->MMTP_REPORT_KEY_MAP:Ljava/util/Map;

    const-string/jumbo v1, "first frame"

    const-string/jumbo v2, "ff"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener;->MMTP_REPORT_KEY_MAP:Ljava/util/Map;

    const-string/jumbo v1, "attempt duration"

    const-string/jumbo v2, "ad"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener;->MMTP_REPORT_KEY_MAP:Ljava/util/Map;

    const-string/jumbo v1, "attempt count"

    const-string/jumbo v2, "ac"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener;->MMTP_REPORT_KEY_MAP:Ljava/util/Map;

    const-string/jumbo v1, "0-RTT"

    const-string/jumbo v2, "0rtt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener;->MMTP_REPORT_KEY_MAP:Ljava/util/Map;

    const-string/jumbo v1, "init"

    const-string/jumbo v2, "init"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, -0x1

    .line 27
    invoke-direct {p0}, Lcom/alipay/mobile/common/amnet/api/AmnetListenerAdpter;-><init>()V

    .line 50
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener;->ipLocal:Ljava/lang/String;

    .line 52
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener;->portLocal:Ljava/lang/String;

    .line 54
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener;->ipRemote:Ljava/lang/String;

    .line 56
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener;->portRemote:Ljava/lang/String;

    .line 60
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener;->lastLocalKey:Ljava/lang/String;

    .line 62
    iput-wide v1, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener;->repeatCoolingTime:J

    .line 64
    iput-wide v1, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener;->initTs:J

    .line 66
    iput-wide v1, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener;->connStartTime:J

    .line 233
    return-void
.end method


# virtual methods
.method public change(I)V
    .locals 1

    .prologue
    .line 82
    if-nez p1, :cond_0

    .line 83
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener;->ipLocal:Ljava/lang/String;

    .line 84
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener;->portLocal:Ljava/lang/String;

    .line 85
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener;->ipRemote:Ljava/lang/String;

    .line 86
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener;->portRemote:Ljava/lang/String;

    .line 88
    :cond_0
    return-void
.end method

.method public getLogModel()Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener;->logModel:Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;

    if-nez v0, :cond_0

    .line 373
    new-instance v0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;-><init>(Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener;->logModel:Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener;->logModel:Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;

    return-object v0
.end method

.method public notifyInitOk()V
    .locals 2

    .prologue
    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener;->initTs:J

    .line 108
    const-string/jumbo v0, "MMTP"

    const-string/jumbo v1, "get notifyInitOK"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public notifyReportOnConnect(Lcom/alipay/mobile/common/transportext/amnet/Linkage$Touching;)V
    .locals 4

    .prologue
    .line 123
    iget-object v0, p1, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Touching;->ipLocal:Ljava/lang/String;

    iget-object v1, p1, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Touching;->ipRemote:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Touching;->portLocal:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Touching;->portRemote:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener;->touch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener;->getLogModel()Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;

    move-result-object v0

    .line 126
    const-string/jumbo v1, "mmtp_conn"

    iput-object v1, v0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->event:Ljava/lang/String;

    .line 128
    iget-object v1, p1, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Touching;->ipLocal:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->ipLocal:Ljava/lang/String;

    .line 129
    iget-object v1, p1, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Touching;->portLocal:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->portLocal:Ljava/lang/String;

    .line 130
    iget-object v1, p1, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Touching;->ipRemote:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->ipRemote:Ljava/lang/String;

    .line 131
    iget-object v1, p1, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Touching;->portRemote:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->portRemote:Ljava/lang/String;

    .line 133
    invoke-virtual {v0}, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->monitorLog()V

    .line 134
    return-void
.end method

.method public notifyReportOnDisconnect(Lcom/alipay/mobile/common/transportext/amnet/Linkage$Touching;Lcom/alipay/mobile/common/transportext/amnet/Linkage$Separating;)V
    .locals 7

    .prologue
    const-wide/16 v5, -0x1

    .line 138
    iget-boolean v0, p1, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Touching;->yesLnk:Z

    if-eqz v0, :cond_b

    .line 141
    invoke-virtual {p0}, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener;->getLogModel()Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;

    move-result-object v1

    .line 142
    const-string/jumbo v0, "mmtp_close"

    iput-object v0, v1, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->event:Ljava/lang/String;

    .line 144
    iget-object v0, p1, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Touching;->ipLocal:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->ipLocal:Ljava/lang/String;

    .line 145
    iget-object v0, p1, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Touching;->portLocal:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->portLocal:Ljava/lang/String;

    .line 146
    iget-object v0, p1, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Touching;->ipRemote:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->ipRemote:Ljava/lang/String;

    .line 147
    iget-object v0, p1, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Touching;->portRemote:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->portRemote:Ljava/lang/String;

    .line 148
    iget-boolean v0, p1, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Touching;->foreground:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "1"

    :goto_0
    iput-object v0, v1, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->isFg:Ljava/lang/String;

    .line 150
    iget-wide v2, p1, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Touching;->msDns:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->dnsTime:Ljava/lang/String;

    .line 151
    iget-wide v2, p1, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Touching;->msTcp:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->connTIme:Ljava/lang/String;

    .line 152
    iget v0, p1, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Touching;->cntAttempt:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->attempCount:Ljava/lang/String;

    .line 153
    iget-wide v2, p1, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Touching;->msAttempt:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->attempDuration:Ljava/lang/String;

    .line 154
    iget-object v0, p1, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Touching;->network:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 155
    iget-object v0, p1, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Touching;->network:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->network:Ljava/lang/String;

    .line 160
    :goto_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 162
    iget-wide v2, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener;->connStartTime:J

    cmp-long v2, v2, v5

    if-eqz v2, :cond_3

    .line 163
    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener;->connStartTime:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 164
    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->connStartTime:Ljava/lang/String;

    .line 169
    :goto_2
    iget-wide v2, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener;->initTs:J

    cmp-long v2, v2, v5

    if-eqz v2, :cond_4

    .line 170
    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener;->initTs:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 171
    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->initTime:Ljava/lang/String;

    .line 176
    :goto_3
    iget-boolean v0, p2, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Separating;->yesSsl:Z

    if-eqz v0, :cond_8

    .line 179
    iget-wide v2, p2, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Separating;->msSsl:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->sslHsTime:Ljava/lang/String;

    .line 180
    iget-boolean v0, p2, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Separating;->fast:Z

    if-eqz v0, :cond_5

    const-string/jumbo v0, "1"

    :goto_4
    iput-object v0, v1, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->zeroRtt:Ljava/lang/String;

    .line 181
    iget-boolean v0, p2, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Separating;->ticket:Z

    if-eqz v0, :cond_6

    const-string/jumbo v0, "1"

    :goto_5
    iput-object v0, v1, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->useTicket:Ljava/lang/String;

    .line 182
    iget-boolean v0, p2, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Separating;->standard:Z

    if-eqz v0, :cond_7

    const-string/jumbo v0, "1"

    :goto_6
    iput-object v0, v1, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->stdSSL:Ljava/lang/String;

    .line 189
    :goto_7
    iget-boolean v0, p2, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Separating;->yesSsl:Z

    if-eqz v0, :cond_9

    const-string/jumbo v0, "1"

    :goto_8
    iput-object v0, v1, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->yesSSL:Ljava/lang/String;

    .line 193
    iget-wide v2, p2, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Separating;->msFirst:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->firstFrameTime:Ljava/lang/String;

    .line 194
    iget-wide v2, p2, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Separating;->msLife:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->connAliveTime:Ljava/lang/String;

    .line 196
    iget-boolean v0, p2, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Separating;->yesErr:Z

    if-eqz v0, :cond_a

    .line 199
    iget v0, p2, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Separating;->codeErr:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->errCode:Ljava/lang/String;

    .line 200
    iget-object v0, p2, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Separating;->infErr:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->errInfo:Ljava/lang/String;

    .line 205
    :goto_9
    invoke-virtual {v1}, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->monitorLog()V

    .line 213
    :cond_0
    :goto_a
    iput-wide v5, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener;->initTs:J

    .line 214
    iput-wide v5, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener;->connStartTime:J

    .line 215
    return-void

    .line 148
    :cond_1
    const-string/jumbo v0, "0"

    goto/16 :goto_0

    .line 157
    :cond_2
    const-string/jumbo v0, ""

    iput-object v0, v1, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->network:Ljava/lang/String;

    goto/16 :goto_1

    .line 166
    :cond_3
    const-string/jumbo v2, ""

    iput-object v2, v1, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->connStartTime:Ljava/lang/String;

    goto :goto_2

    .line 173
    :cond_4
    const-string/jumbo v0, ""

    iput-object v0, v1, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->initTime:Ljava/lang/String;

    goto :goto_3

    .line 180
    :cond_5
    const-string/jumbo v0, "0"

    goto :goto_4

    .line 181
    :cond_6
    const-string/jumbo v0, "0"

    goto :goto_5

    .line 182
    :cond_7
    const-string/jumbo v0, "0"

    goto :goto_6

    .line 184
    :cond_8
    const-string/jumbo v0, ""

    iput-object v0, v1, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->sslHsTime:Ljava/lang/String;

    .line 185
    const-string/jumbo v0, ""

    iput-object v0, v1, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->zeroRtt:Ljava/lang/String;

    .line 186
    const-string/jumbo v0, ""

    iput-object v0, v1, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->useTicket:Ljava/lang/String;

    .line 187
    const-string/jumbo v0, ""

    iput-object v0, v1, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->stdSSL:Ljava/lang/String;

    goto :goto_7

    .line 189
    :cond_9
    const-string/jumbo v0, "0"

    goto :goto_8

    .line 202
    :cond_a
    const-string/jumbo v0, ""

    iput-object v0, v1, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->errCode:Ljava/lang/String;

    goto :goto_9

    .line 207
    :cond_b
    iget-boolean v0, p2, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Separating;->yesErr:Z

    if-eqz v0, :cond_0

    .line 209
    iget v0, p2, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Separating;->codeErr:I

    iget-object v1, p2, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Separating;->infErr:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener;->reportError(ILjava/lang/String;)V

    goto :goto_a
.end method

.method public panic(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 92
    const-string/jumbo v0, "MMTP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Panic errorCode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public report(Ljava/lang/String;D)V
    .locals 3

    .prologue
    .line 99
    const-string/jumbo v0, "MMTP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Report ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public reportError(ILjava/lang/String;)V
    .locals 4

    .prologue
    .line 218
    iget-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener;->lastLocalKey:Ljava/lang/String;

    const-string/jumbo v1, "mmtp_error"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener;->repeatCoolingTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener;->repeatCoolingTime:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 219
    const-string/jumbo v0, "MMTP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Repeat the event ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener;->lastLocalKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :goto_0
    return-void

    .line 222
    :cond_0
    const-string/jumbo v0, "mmtp_error"

    iput-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener;->lastLocalKey:Ljava/lang/String;

    .line 223
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x7d0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener;->repeatCoolingTime:J

    .line 225
    invoke-virtual {p0}, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener;->getLogModel()Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;

    move-result-object v0

    .line 226
    const-string/jumbo v1, "mmtp_error"

    iput-object v1, v0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->event:Ljava/lang/String;

    .line 227
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->errCode:Ljava/lang/String;

    .line 228
    iput-object p2, v0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->errInfo:Ljava/lang/String;

    .line 229
    invoke-virtual {v0}, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->monitorLog()V

    goto :goto_0
.end method

.method public touch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 113
    iput-object p1, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener;->ipLocal:Ljava/lang/String;

    .line 114
    iput-object p3, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener;->portLocal:Ljava/lang/String;

    .line 115
    iput-object p2, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener;->ipRemote:Ljava/lang/String;

    .line 116
    iput-object p4, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener;->portRemote:Ljava/lang/String;

    .line 118
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener;->initTs:J

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener;->connStartTime:J

    .line 120
    return-void
.end method
