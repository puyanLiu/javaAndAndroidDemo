.class final Lcom/alipay/mobile/socialsdk/contact/processer/h;
.super Ljava/lang/Object;
.source "MobileContactUploader.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;

.field private final synthetic b:Ljava/util/List;

.field private final synthetic c:Lcom/j256/ormlite/dao/Dao;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;Ljava/util/List;Lcom/j256/ormlite/dao/Dao;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/h;->a:Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/contact/processer/h;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/alipay/mobile/socialsdk/contact/processer/h;->c:Lcom/j256/ormlite/dao/Dao;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/h;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecord;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/processer/h;->c:Lcom/j256/ormlite/dao/Dao;

    new-instance v3, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecordVt;

    invoke-direct {v3, v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecordVt;-><init>(Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecord;)V

    invoke-interface {v2, v3}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    goto :goto_0
.end method
