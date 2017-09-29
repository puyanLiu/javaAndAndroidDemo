.class public Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;
.super Ljava/lang/Object;
.source "ProcessCpuTracker.java"


# instance fields
.field public final a:I

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field final d:Ljava/lang/String;

.field final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;",
            ">;"
        }
    .end annotation
.end field

.field final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;",
            ">;"
        }
    .end annotation
.end field

.field public g:Z

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:I

.field public k:J

.field public l:J

.field public m:J

.field public n:J

.field public o:J

.field public p:I

.field public q:I

.field public r:J

.field public s:J

.field public t:I

.field public u:I

.field public v:Z

.field public w:Z

.field public x:Z

.field public y:Z


# direct methods
.method constructor <init>(IIZ)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    iput p1, p0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->a:I

    .line 228
    if-gez p2, :cond_1

    .line 229
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/proc"

    iget v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "stat"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->b:Ljava/lang/String;

    .line 231
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "cmdline"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->c:Ljava/lang/String;

    .line 232
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "task"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->d:Ljava/lang/String;

    .line 233
    if-eqz p3, :cond_0

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->e:Ljava/util/ArrayList;

    .line 235
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->f:Ljava/util/ArrayList;

    .line 252
    :goto_0
    return-void

    .line 237
    :cond_0
    iput-object v4, p0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->e:Ljava/util/ArrayList;

    .line 238
    iput-object v4, p0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->f:Ljava/util/ArrayList;

    goto :goto_0

    .line 241
    :cond_1
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/proc"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "task"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 245
    new-instance v0, Ljava/io/File;

    const-string/jumbo v2, "stat"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->b:Ljava/lang/String;

    .line 246
    iput-object v4, p0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->c:Ljava/lang/String;

    .line 247
    iput-object v4, p0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->d:Ljava/lang/String;

    .line 248
    iput-object v4, p0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->e:Ljava/util/ArrayList;

    .line 249
    iput-object v4, p0, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->f:Ljava/util/ArrayList;

    goto :goto_0
.end method
