.class public Lcom/alipay/android/app/data/EventTidScriptable;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/app/script/ITidScriptable;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/alipay/android/app/data/DataSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/alipay/android/app/data/DataSource;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/android/app/data/EventTidScriptable;->a:Ljava/lang/ref/WeakReference;

    .line 25
    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alipay/android/app/data/EventTidScriptable;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/data/DataSource;

    invoke-virtual {v0}, Lcom/alipay/android/app/data/DataSource;->f()V

    .line 48
    invoke-static {}, Lcom/alipay/android/app/tid/TidInfo;->g()V

    .line 49
    return-void
.end method

.method public save(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 34
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v0

    .line 35
    invoke-static {}, Lcom/alipay/android/app/tid/TidInfo;->f()Lcom/alipay/android/app/tid/TidInfo;

    move-result-object v1

    .line 36
    invoke-virtual {v1, p1}, Lcom/alipay/android/app/tid/TidInfo;->a(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v1, v0}, Lcom/alipay/android/app/tid/TidInfo;->a(Landroid/content/Context;)V

    .line 38
    return-void
.end method
