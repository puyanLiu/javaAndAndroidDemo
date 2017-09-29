.class Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;
.super Ljava/lang/Object;
.source "AmnetMonitorLoggerListener.java"


# static fields
.field public static final ALIVE_TIMING:Ljava/lang/String; = "dur"

.field public static final ATTEMP_COUNT:Ljava/lang/String; = "c_c"

.field public static final ATTEMP_DURATION:Ljava/lang/String; = "c_t"

.field public static final CONN_START_TS:Ljava/lang/String; = "ts"

.field public static final CONN_TIMING:Ljava/lang/String; = "tcp_c"

.field public static final DNS_TIMING:Ljava/lang/String; = "dns_c"

.field public static final ERR_CODE:Ljava/lang/String; = "errcode"

.field public static final ERR_INFO:Ljava/lang/String; = "errinfo"

.field public static final EVENT_KEY_ERROR:Ljava/lang/String; = "mmtp_error"

.field public static final EVENT_KEY_ON_CONNECTED:Ljava/lang/String; = "mmtp_conn"

.field public static final EVENT_KEY_ON_DISCONNECED:Ljava/lang/String; = "mmtp_close"

.field public static final FIRST_FRAME:Ljava/lang/String; = "f_ack"

.field public static final HANDSHAKE_TIMING:Ljava/lang/String; = "tls_hs"

.field public static final INIT_TIME:Ljava/lang/String; = "init"

.field public static final IP_LOCAL:Ljava/lang/String; = "IL"

.field public static final IP_REMOTE:Ljava/lang/String; = "IR"

.field public static final IS_FG:Ljava/lang/String; = "fg"

.field public static final NETWORK:Ljava/lang/String; = "network"

.field public static final PORT_LOCAL:Ljava/lang/String; = "PL"

.field public static final PORT_REMOTE:Ljava/lang/String; = "PR"

.field public static final STD_SSL:Ljava/lang/String; = "stdssl"

.field public static final USE_TICKET:Ljava/lang/String; = "tkt"

.field public static final YES_SSL:Ljava/lang/String; = "yesssl"

.field public static final ZERO_RTT:Ljava/lang/String; = "tls_0rtt"


# instance fields
.field public attempCount:Ljava/lang/String;

.field public attempDuration:Ljava/lang/String;

.field public connAliveTime:Ljava/lang/String;

.field public connStartTime:Ljava/lang/String;

.field public connTIme:Ljava/lang/String;

.field public dnsTime:Ljava/lang/String;

.field public errCode:Ljava/lang/String;

.field public errInfo:Ljava/lang/String;

.field public event:Ljava/lang/String;

.field public firstFrameTime:Ljava/lang/String;

.field public initTime:Ljava/lang/String;

.field public ipLocal:Ljava/lang/String;

.field public ipRemote:Ljava/lang/String;

.field public isFg:Ljava/lang/String;

.field public network:Ljava/lang/String;

.field public portLocal:Ljava/lang/String;

.field public portRemote:Ljava/lang/String;

.field public sslHsTime:Ljava/lang/String;

.field public stdSSL:Ljava/lang/String;

.field final synthetic this$0:Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener;

.field public useTicket:Ljava/lang/String;

.field public yesSSL:Ljava/lang/String;

.field public zeroRtt:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener;)V
    .locals 1

    .prologue
    .line 233
    iput-object p1, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->this$0:Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->ipLocal:Ljava/lang/String;

    .line 282
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->portLocal:Ljava/lang/String;

    .line 283
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->ipRemote:Ljava/lang/String;

    .line 284
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->portRemote:Ljava/lang/String;

    .line 285
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->event:Ljava/lang/String;

    .line 288
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->dnsTime:Ljava/lang/String;

    .line 289
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->connTIme:Ljava/lang/String;

    .line 290
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->attempDuration:Ljava/lang/String;

    .line 291
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->attempCount:Ljava/lang/String;

    .line 292
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->network:Ljava/lang/String;

    .line 293
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->isFg:Ljava/lang/String;

    .line 296
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->yesSSL:Ljava/lang/String;

    .line 297
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->sslHsTime:Ljava/lang/String;

    .line 298
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->connAliveTime:Ljava/lang/String;

    .line 299
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->initTime:Ljava/lang/String;

    .line 300
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->firstFrameTime:Ljava/lang/String;

    .line 301
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->zeroRtt:Ljava/lang/String;

    .line 302
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->useTicket:Ljava/lang/String;

    .line 303
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->stdSSL:Ljava/lang/String;

    .line 305
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->connStartTime:Ljava/lang/String;

    .line 306
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->errCode:Ljava/lang/String;

    .line 307
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->errInfo:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public monitorLog()V
    .locals 4

    .prologue
    .line 310
    invoke-static {}, Lcom/alipay/mobile/common/amnet/api/AmnetEnvHelper;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/ConnectionUtil;->getConnType(Landroid/content/Context;)I

    move-result v0

    .line 311
    invoke-static {}, Lcom/alipay/mobile/common/amnet/api/AmnetEnvHelper;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/utils/ConnectionUtil;->getNetworkType(Landroid/content/Context;)I

    move-result v1

    .line 313
    new-instance v2, Lcom/alipay/mobile/common/transport/monitor/TransportPerformance;

    invoke-direct {v2}, Lcom/alipay/mobile/common/transport/monitor/TransportPerformance;-><init>()V

    .line 314
    const-string/jumbo v3, "MMTP"

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setSubType(Ljava/lang/String;)V

    .line 315
    const-string/jumbo v3, "1.0"

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setParam1(Ljava/lang/String;)V

    .line 316
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setParam2(Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->event:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setParam3(Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->event:Ljava/lang/String;

    const-string/jumbo v1, "mmtp_error"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 322
    invoke-virtual {v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "errcode"

    iget-object v3, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->errCode:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    invoke-virtual {v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "errinfo"

    iget-object v3, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->errInfo:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    :cond_0
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->SWITCH_TAG_LOG:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v0

    .line 359
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 360
    invoke-virtual {v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v3, "stl"

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->MONITORPOINT_NETWORK:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->performance(Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;Lcom/alipay/mobile/common/logging/api/monitor/Performance;)V

    .line 365
    const-string/jumbo v0, "MMTP"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    return-void

    .line 326
    :cond_2
    invoke-virtual {v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "IL"

    iget-object v3, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->ipLocal:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    invoke-virtual {v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "PL"

    iget-object v3, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->portLocal:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    invoke-virtual {v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "IR"

    iget-object v3, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->ipRemote:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    invoke-virtual {v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "PR"

    iget-object v3, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->portRemote:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    iget-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->event:Ljava/lang/String;

    const-string/jumbo v1, "mmtp_close"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    invoke-virtual {v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "dns_c"

    iget-object v3, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->dnsTime:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    invoke-virtual {v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "tcp_c"

    iget-object v3, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->connTIme:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    invoke-virtual {v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "c_c"

    iget-object v3, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->attempCount:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    invoke-virtual {v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "c_t"

    iget-object v3, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->attempDuration:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    invoke-virtual {v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "network"

    iget-object v3, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->network:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    invoke-virtual {v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "fg"

    iget-object v3, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->isFg:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    invoke-virtual {v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "yesssl"

    iget-object v3, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->yesSSL:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    invoke-virtual {v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "tls_hs"

    iget-object v3, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->sslHsTime:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    invoke-virtual {v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "dur"

    iget-object v3, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->connAliveTime:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    invoke-virtual {v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "init"

    iget-object v3, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->initTime:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    invoke-virtual {v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "f_ack"

    iget-object v3, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->firstFrameTime:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    invoke-virtual {v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "tls_0rtt"

    iget-object v3, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->zeroRtt:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    invoke-virtual {v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "tkt"

    iget-object v3, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->useTicket:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    invoke-virtual {v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "stdssl"

    iget-object v3, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->stdSSL:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    invoke-virtual {v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "ts"

    iget-object v3, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->connStartTime:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    iget-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->errCode:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 352
    invoke-virtual {v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "errcode"

    iget-object v3, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->errCode:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    invoke-virtual {v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "errinfo"

    iget-object v3, p0, Lcom/alipay/mobile/common/amnet/biz/inner/AmnetMonitorLoggerListener$LogModel;->errInfo:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method
