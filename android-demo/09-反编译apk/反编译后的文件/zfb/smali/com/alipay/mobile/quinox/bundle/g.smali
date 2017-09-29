.class final Lcom/alipay/mobile/quinox/bundle/g;
.super Ljava/lang/Object;
.source "BundlesManagerImpl.java"

# interfaces
.implements Lcom/alipay/mobile/quinox/bundle/e;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/io/File;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;Ljava/util/List;Ljava/io/File;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 809
    iput-object p1, p0, Lcom/alipay/mobile/quinox/bundle/g;->d:Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;

    iput-object p2, p0, Lcom/alipay/mobile/quinox/bundle/g;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/alipay/mobile/quinox/bundle/g;->b:Ljava/io/File;

    iput-object p4, p0, Lcom/alipay/mobile/quinox/bundle/g;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/mobile/quinox/bundle/a;)Z
    .locals 4

    .prologue
    .line 812
    iget-object v0, p1, Lcom/alipay/mobile/quinox/bundle/a;->a:Ljava/lang/String;

    .line 813
    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/bundle/a;->d()Ljava/lang/String;

    move-result-object v1

    .line 814
    iget-object v2, p0, Lcom/alipay/mobile/quinox/bundle/g;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 815
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/mobile/quinox/bundle/g;->b:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 816
    iget-object v3, p0, Lcom/alipay/mobile/quinox/bundle/g;->d:Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;

    invoke-static {v3, v1, v2}, Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;->b(Lcom/alipay/mobile/quinox/bundle/BundlesManagerImpl;Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    iget-object v1, p0, Lcom/alipay/mobile/quinox/bundle/g;->c:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 819
    iget-object v1, p0, Lcom/alipay/mobile/quinox/bundle/g;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 820
    iget-object v1, p0, Lcom/alipay/mobile/quinox/bundle/g;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 821
    const/4 v0, 0x1

    .line 828
    :goto_0
    return v0

    .line 824
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/alipay/mobile/quinox/bundle/g;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 825
    iget-object v1, p0, Lcom/alipay/mobile/quinox/bundle/g;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 828
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
