.class public interface abstract Lcom/alipay/mobile/beehive/compositeui/danmaku/loader/ILoader;
.super Ljava/lang/Object;
.source "ILoader.java"


# virtual methods
.method public abstract getDataSource()Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/IDataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/IDataSource",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract load(Ljava/io/InputStream;)V
.end method

.method public abstract load(Ljava/lang/String;)V
.end method
