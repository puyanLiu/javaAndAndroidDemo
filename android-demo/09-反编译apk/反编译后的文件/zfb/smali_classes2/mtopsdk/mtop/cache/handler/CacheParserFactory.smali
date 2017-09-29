.class public Lmtopsdk/mtop/cache/handler/CacheParserFactory;
.super Ljava/lang/Object;
.source "CacheParserFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static createCacheParser(Lanetwork/network/cache/RpcCache$CacheStatus;)Lmtopsdk/mtop/cache/handler/ICacheParser;
    .locals 2

    .prologue
    .line 8
    if-nez p0, :cond_0

    .line 10
    new-instance v0, Lmtopsdk/mtop/cache/handler/EmptyCacheParser;

    invoke-direct {v0}, Lmtopsdk/mtop/cache/handler/EmptyCacheParser;-><init>()V

    .line 25
    :goto_0
    return-object v0

    .line 13
    :cond_0
    sget-object v0, Lmtopsdk/mtop/cache/handler/CacheParserFactory$1;->$SwitchMap$anetwork$network$cache$RpcCache$CacheStatus:[I

    invoke-virtual {p0}, Lanetwork/network/cache/RpcCache$CacheStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 21
    new-instance v0, Lmtopsdk/mtop/cache/handler/EmptyCacheParser;

    invoke-direct {v0}, Lmtopsdk/mtop/cache/handler/EmptyCacheParser;-><init>()V

    goto :goto_0

    .line 15
    :pswitch_0
    new-instance v0, Lmtopsdk/mtop/cache/handler/FreshCacheParser;

    invoke-direct {v0}, Lmtopsdk/mtop/cache/handler/FreshCacheParser;-><init>()V

    goto :goto_0

    .line 18
    :pswitch_1
    new-instance v0, Lmtopsdk/mtop/cache/handler/ExpiredCacheParser;

    invoke-direct {v0}, Lmtopsdk/mtop/cache/handler/ExpiredCacheParser;-><init>()V

    goto :goto_0

    .line 13
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
