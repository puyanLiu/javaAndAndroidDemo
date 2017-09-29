.class final Lcom/alipay/mobile/socialsdk/contact/processer/l;
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

.field private final synthetic c:I

.field private final synthetic d:Lcom/j256/ormlite/dao/Dao;

.field private final synthetic e:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;Ljava/util/List;ILcom/j256/ormlite/dao/Dao;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/l;->a:Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/contact/processer/l;->b:Ljava/util/List;

    iput p3, p0, Lcom/alipay/mobile/socialsdk/contact/processer/l;->c:I

    iput-object p4, p0, Lcom/alipay/mobile/socialsdk/contact/processer/l;->d:Lcom/j256/ormlite/dao/Dao;

    iput-object p5, p0, Lcom/alipay/mobile/socialsdk/contact/processer/l;->e:Ljava/util/List;

    .line 508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/l;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/l;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecordVt;

    iget v2, p0, Lcom/alipay/mobile/socialsdk/contact/processer/l;->c:I

    iput v2, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecordVt;->order:I

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/processer/l;->d:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2, v0}, Lcom/j256/ormlite/dao/Dao;->createIfNotExists(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecordVt;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/processer/l;->d:Lcom/j256/ormlite/dao/Dao;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/UploadMobileRecordVt;->getRId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/j256/ormlite/dao/Dao;->deleteById(Ljava/lang/Object;)I

    goto :goto_1
.end method
