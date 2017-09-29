.class public Lcom/alipay/mobile/common/ipc/biz/EnhanceRemoteCallbackList;
.super Landroid/os/RemoteCallbackList;
.source "EnhanceRemoteCallbackList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Landroid/os/IInterface;",
        ">",
        "Landroid/os/RemoteCallbackList",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IPC_EnhanceRemoteCallbackList"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    return-void
.end method


# virtual methods
.method public getRegisteredCallbackCount()I
    .locals 2

    .prologue
    .line 24
    :try_start_0
    const-class v0, Landroid/os/RemoteCallbackList;

    const-string/jumbo v1, "mCallbacks"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 25
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 27
    invoke-interface {v0}, Ljava/util/Map;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 29
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
