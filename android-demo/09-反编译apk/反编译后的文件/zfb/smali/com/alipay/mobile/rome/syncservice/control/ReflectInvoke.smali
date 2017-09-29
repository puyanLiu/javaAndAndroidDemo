.class public Lcom/alipay/mobile/rome/syncservice/control/ReflectInvoke;
.super Ljava/lang/Object;
.source "ReflectInvoke.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/alipay/mobile/rome/syncservice/control/ReflectInvoke;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/rome/syncservice/control/ReflectInvoke;->a:Ljava/lang/String;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/control/ReflectInvoke;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static init()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/alipay/mobile/rome/syncservice/control/ReflectInvoke$1;

    invoke-direct {v0}, Lcom/alipay/mobile/rome/syncservice/control/ReflectInvoke$1;-><init>()V

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->submit(Ljava/lang/Runnable;)V

    .line 29
    return-void
.end method
