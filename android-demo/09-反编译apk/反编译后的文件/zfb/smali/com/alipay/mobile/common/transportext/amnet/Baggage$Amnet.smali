.class public Lcom/alipay/mobile/common/transportext/amnet/Baggage$Amnet;
.super Ljava/lang/Object;
.source "Baggage.java"


# static fields
.field public static final ADDRESS_ALL:Ljava/lang/String; = "all-link"

.field public static final ADDRESS_LONG:Ljava/lang/String; = "long-link"

.field public static final ADDRESS_SHORT:Ljava/lang/String; = "short-link"

.field public static final ALT_ADDRESS:I = 0x8

.field public static final ALT_GROUND:I = 0x1

.field public static final ALT_HEARTBEAT:I = 0x5

.field public static final ALT_NET:I = 0x0

.field public static final ALT_PROCESS:I = 0x3

.field public static final ALT_RTT:I = 0x7

.field public static final ALT_SCREEN:I = 0x2

.field public static final ALT_SECURITY:I = 0x6

.field public static final ALT_USER:I = 0x4

.field public static final CFG_ADDR:Ljava/lang/String; = "server-address"

.field public static final CFG_CA:Ljava/lang/String; = "top-CA"

.field public static final CFG_CERT:Ljava/lang/String; = "certificate-name"

.field public static final CFG_SSL:Ljava/lang/String; = "security"

.field public static final GROUND_BACK:Ljava/lang/String; = "background"

.field public static final GROUND_FORE:Ljava/lang/String; = "foreground"

.field public static final HEARTBEAT_DYNAMIC:Ljava/lang/String; = "dynamic"

.field public static final HEARTBEAT_STATIC:Ljava/lang/String; = "static"

.field public static final LVL_DEBUG:Ljava/lang/String; = "DEBUG"

.field public static final LVL_ERROR:Ljava/lang/String; = "ERROR"

.field public static final LVL_FATAL:Ljava/lang/String; = "FATAL"

.field public static final LVL_INF:Ljava/lang/String; = "INFO"

.field public static final LVL_VERBOSE:Ljava/lang/String; = "VERBOSE"

.field public static final LVL_WARN:Ljava/lang/String; = "WARN"

.field public static final NET_2G:Ljava/lang/String; = "2g"

.field public static final NET_3G:Ljava/lang/String; = "3g"

.field public static final NET_4G:Ljava/lang/String; = "4g"

.field public static final NET_NONE:Ljava/lang/String; = "none"

.field public static final NET_UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final NET_WIFI:Ljava/lang/String; = "wifi"

.field public static final PROCESS_I:Ljava/lang/String; = "live"

.field public static final PROCESS_O:Ljava/lang/String; = "dead"

.field public static final RTT_NORMAL:Ljava/lang/String; = "normal"

.field public static final RTT_ZERO:Ljava/lang/String; = "fast"

.field public static final SCREEN_I:Ljava/lang/String; = "enable"

.field public static final SCREEN_O:Ljava/lang/String; = "disable"

.field public static final SECURITY_DELAYED:Ljava/lang/String; = "delayed"

.field public static final SECURITY_INSTANT:Ljava/lang/String; = "instant"

.field public static final SSL_DFT:Ljava/lang/String; = "*"

.field public static final SSL_MTLS:Ljava/lang/String; = "mtls"

.field public static final SSL_STD:Ljava/lang/String; = "standard"

.field public static final USER_I:Ljava/lang/String; = "login"

.field public static final USER_O:Ljava/lang/String; = "logout"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
