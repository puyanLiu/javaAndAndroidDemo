.class final Lcom/alipay/android/phone/mobilesdk/apm/cpu/a;
.super Ljava/lang/Object;
.source "ProcessCpuTracker.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 255
    check-cast p1, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;

    check-cast p2, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;

    iget v2, p1, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->p:I

    iget v3, p1, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->q:I

    add-int/2addr v2, v3

    iget v3, p2, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->p:I

    iget v4, p2, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->q:I

    add-int/2addr v3, v4

    if-eq v2, v3, :cond_2

    if-le v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-boolean v2, p1, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->x:Z

    iget-boolean v3, p2, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->x:Z

    if-eq v2, v3, :cond_3

    iget-boolean v2, p1, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->x:Z

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    iget-boolean v2, p1, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->y:Z

    iget-boolean v3, p2, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->y:Z

    if-eq v2, v3, :cond_4

    iget-boolean v2, p1, Lcom/alipay/android/phone/mobilesdk/apm/cpu/ProcessCpuTracker$Stats;->x:Z

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method
