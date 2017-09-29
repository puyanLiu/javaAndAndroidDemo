.class public Lcom/alipay/android/app/data/LuaNativeObjectCache;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alipay/android/app/data/LuaNativeObjectCache;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 39
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    .line 40
    return-void
.end method
