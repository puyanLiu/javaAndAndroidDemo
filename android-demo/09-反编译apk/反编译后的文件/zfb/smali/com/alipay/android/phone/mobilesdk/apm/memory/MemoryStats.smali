.class public Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;
.super Ljava/lang/Object;
.source "MemoryStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;",
            ">;"
        }
    .end annotation
.end field

.field private static final a:Ljava/lang/String;

.field private static final b:J

.field private static final c:J


# instance fields
.field private d:F

.field private e:J

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 20
    const-class v0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->a:Ljava/lang/String;

    .line 25
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/apm/util/APMUtil;->a:Landroid/app/Application;

    const-string/jumbo v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLargeMemoryClass()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    .line 36
    sput-wide v0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->b:J

    const-wide/32 v2, 0x14000

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->c:J

    .line 63
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/apm/memory/a;

    invoke-direct {v0}, Lcom/alipay/android/phone/mobilesdk/apm/memory/a;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->a:Ljava/lang/String;

    const-string/jumbo v2, "readFromParcel"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->e:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->f:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->g:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->h:I

    .line 111
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 4

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :try_start_0
    invoke-static {}, Landroid/os/Debug;->getPss()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->e:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    sget-wide v0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 88
    iget-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->e:J

    const-wide/32 v2, 0x14000

    sub-long/2addr v0, v2

    long-to-float v0, v0

    sget-wide v1, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->c:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->d:F

    .line 92
    :cond_0
    if-nez p1, :cond_1

    .line 107
    :goto_1
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->a:Ljava/lang/String;

    sget-object v3, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 97
    :cond_1
    :try_start_1
    new-instance v0, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v0}, Landroid/os/Debug$MemoryInfo;-><init>()V

    .line 98
    invoke-static {v0}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    .line 100
    iget v1, v0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    iput v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->f:I

    .line 101
    iget v1, v0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    iput v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->g:I

    .line 102
    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherPss:I

    iput v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->h:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 104
    :catch_1
    move-exception v0

    .line 105
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->a:Ljava/lang/String;

    sget-object v3, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method public final a()F
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->d:F

    return v0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 118
    iget-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->e:J

    return-wide v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 155
    const/16 v0, 0x2c

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-wide v3, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->b:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-wide/32 v3, 0x14000

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-wide v3, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->c:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->d:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-wide v3, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->e:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget v3, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->f:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget v3, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->g:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget v3, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->h:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMUtil;->a(C[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    .line 128
    if-nez p1, :cond_0

    .line 138
    :goto_0
    return-void

    .line 132
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->a:Ljava/lang/String;

    const-string/jumbo v2, "writeToParcel"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->e:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 135
    iget v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    iget v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->g:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    iget v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->h:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
