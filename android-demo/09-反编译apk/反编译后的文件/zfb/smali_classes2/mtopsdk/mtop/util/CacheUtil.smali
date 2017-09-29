.class public Lmtopsdk/mtop/util/CacheUtil;
.super Ljava/lang/Object;
.source "CacheUtil.java"


# static fields
.field public static final MAX_AGE:Ljava/lang/String; = "max-age="

.field public static final OFFLINE_FLAG_OFF:Ljava/lang/String; = "of=off"

.field public static final OFFLINE_FLAG_ON:Ljava/lang/String; = "of=on"

.field private static final TAG:Ljava/lang/String; = "mtopsdk.CacheUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertTimeFormatGMT2Long(Ljava/lang/String;)J
    .locals 5

    .prologue
    const-wide/16 v0, -0x1

    .line 23
    .line 24
    invoke-static {p0}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 38
    :cond_0
    :goto_0
    return-wide v0

    .line 27
    :cond_1
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "EEE, d MMM yyyy HH:mm:ss \'GMT\'"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 28
    const-string/jumbo v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 29
    const/4 v2, 0x0

    .line 31
    :try_start_0
    invoke-virtual {v3, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 35
    :goto_1
    if-eqz v2, :cond_0

    .line 36
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    goto :goto_0

    .line 33
    :catch_0
    move-exception v3

    const-string/jumbo v3, "mtopsdk.CacheUtil"

    const-string/jumbo v4, "parse gmt timeformat error"

    invoke-static {v3, v4}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
