.class public final Lcom/alipay/mobile/common/utils/GtsUtils;
.super Ljava/lang/Object;
.source "GtsUtils.java"


# static fields
.field private static a:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/alipay/mobile/common/utils/GtsUtils;->a:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final get64HexCurrentTimeMillis()Ljava/lang/String;
    .locals 2

    .prologue
    .line 32
    invoke-static {}, Lcom/alipay/mobile/common/utils/GtsUtils;->getCurrentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/HexaDecimalConvUtil;->c10to64(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getCurrentTimeMillis()J
    .locals 4

    .prologue
    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 14
    sget-wide v2, Lcom/alipay/mobile/common/utils/GtsUtils;->a:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 16
    sput-wide v0, Lcom/alipay/mobile/common/utils/GtsUtils;->a:J

    .line 26
    :goto_0
    return-wide v0

    .line 19
    :cond_0
    const-class v2, Lcom/alipay/mobile/common/utils/GtsUtils;

    monitor-enter v2

    .line 21
    const-wide/16 v0, 0x5

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :goto_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 26
    sput-wide v0, Lcom/alipay/mobile/common/utils/GtsUtils;->a:J

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 22
    :catch_0
    move-exception v0

    .line 23
    :try_start_2
    const-string/jumbo v1, "GtsUtils"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->printError(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
