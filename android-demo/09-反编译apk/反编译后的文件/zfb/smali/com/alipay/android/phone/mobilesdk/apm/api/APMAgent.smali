.class public interface abstract Lcom/alipay/android/phone/mobilesdk/apm/api/APMAgent;
.super Ljava/lang/Object;
.source "APMAgent.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/alipay/android/phone/mobilesdk/apm/api/APMAgent;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/mobilesdk/apm/api/APMAgent;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract disconnect()V
.end method

.method public abstract noteMemoryLeak(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract obtainFluencyUsage()Landroid/os/Bundle;
.end method

.method public abstract obtainMemoryUsage()Landroid/os/Bundle;
.end method

.method public abstract obtainStorageStructure()Ljava/lang/String;
.end method

.method public abstract obtainStorageUsage()Landroid/os/Bundle;
.end method

.method public abstract startAnrWatch()V
.end method

.method public abstract startMemoryWatch()V
.end method

.method public abstract startSmoothnessWatch(Ljava/lang/String;)V
.end method

.method public abstract stopAnrWatch()V
.end method

.method public abstract stopMemoryWatch()V
.end method

.method public abstract stopSmoothnessWatch()V
.end method
