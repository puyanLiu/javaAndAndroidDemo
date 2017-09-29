.class public Lcom/alipay/mobile/common/transportext/amnet/Baggage$Linkage;
.super Ljava/lang/Object;
.source "Baggage.java"


# static fields
.field public static final ERR_ADDRESS:I = 0x1

.field public static final ERR_HANDSHAKE:I = 0x7

.field public static final ERR_HTTP:I = 0xa

.field public static final ERR_LINK:I = 0x6

.field public static final ERR_MEMORY:I = 0x5

.field public static final ERR_MMTP:I = 0xb

.field public static final ERR_RECEIVE:I = 0x2

.field public static final ERR_SEND:I = 0x3

.field public static final ERR_SHUTDOWN:I = 0x9

.field public static final ERR_SSL_IO:I = 0x8

.field public static final ERR_SYSTEM:I = 0x4

.field public static final ERR_TIME_OUT:I = 0x0

.field public static final RPT_ATTEMPT_COUNT:Ljava/lang/String; = "attempt count"

.field public static final RPT_ATTEMPT_DURATION:Ljava/lang/String; = "attempt duration"

.field public static final RPT_DNS:Ljava/lang/String; = "DNS"

.field public static final RPT_FIRST_FRAME:Ljava/lang/String; = "first frame"

.field public static final RPT_HEARTBEAT_RTT:Ljava/lang/String; = "heartbeat RTT"

.field public static final RPT_JVM_SSL_INIT:Ljava/lang/String; = "JVM SSL handshake"

.field public static final RPT_JVM_TCP_INIT:Ljava/lang/String; = "JVM TCP connect"

.field public static final RPT_LINK_LIFE:Ljava/lang/String; = "link life"

.field public static final RPT_NTV_DATA_SEND:Ljava/lang/String; = "native data send"

.field public static final RPT_NTV_SSL_INIT:Ljava/lang/String; = "native SSL handshake"

.field public static final RPT_NTV_TCP_INIT:Ljava/lang/String; = "native TCP connect"

.field public static final RPT_TICKET:Ljava/lang/String; = "ticket"

.field public static final RPT_ZERO_RTT:Ljava/lang/String; = "0-RTT"

.field public static final STATE_BROKEN:I = 0x0

.field public static final STATE_CONNECTED:I = 0x2

.field public static final STATE_ESTABLISHED:I = 0x4

.field public static final STATE_HANDSHAKING:I = 0x3

.field public static final STATE_LINKING:I = 0x1

.field public static final STATE_SHUTTING:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
