.class Lmtopsdk/mtop/cache/config/CacheConfigReceiver$1;
.super Ljava/lang/Object;
.source "CacheConfigReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lmtopsdk/mtop/cache/config/CacheConfigReceiver;


# direct methods
.method constructor <init>(Lmtopsdk/mtop/cache/config/CacheConfigReceiver;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lmtopsdk/mtop/cache/config/CacheConfigReceiver$1;->this$0:Lmtopsdk/mtop/cache/config/CacheConfigReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 62
    invoke-static {}, Lmtopsdk/mtop/cache/config/CacheConfigManager;->getInstance()Lmtopsdk/mtop/cache/config/CacheConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lmtopsdk/mtop/cache/config/CacheConfigManager;->queryCacheBlockConfigFromConfigCenter()Ljava/util/Map;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v1, p0, Lmtopsdk/mtop/cache/config/CacheConfigReceiver$1;->this$0:Lmtopsdk/mtop/cache/config/CacheConfigReceiver;

    invoke-static {v1, v0}, Lmtopsdk/mtop/cache/config/CacheConfigReceiver;->access$000(Lmtopsdk/mtop/cache/config/CacheConfigReceiver;Ljava/util/Map;)V

    goto :goto_0
.end method
