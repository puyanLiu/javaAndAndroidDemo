.class public interface abstract Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/IDataSource;
.super Ljava/lang/Object;
.source "IDataSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final SCHEME_FILE_TAG:Ljava/lang/String; = "file"

.field public static final SCHEME_HTTPS_TAG:Ljava/lang/String; = "https"

.field public static final SCHEME_HTTP_TAG:Ljava/lang/String; = "http"


# virtual methods
.method public abstract data()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract release()V
.end method
