.class final Lcom/alipay/mobile/socialsdk/bizdata/data/a;
.super Ljava/lang/Object;
.source "AliAccountDaoOp.java"

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
.field final synthetic a:Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

.field private final synthetic b:Z

.field private final synthetic c:Ljava/util/HashMap;

.field private final synthetic d:Ljava/util/List;

.field private final synthetic e:Z


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;ZLjava/util/HashMap;Ljava/util/List;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/a;->a:Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    iput-boolean p2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/a;->b:Z

    iput-object p3, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/a;->c:Ljava/util/HashMap;

    iput-object p4, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/a;->d:Ljava/util/List;

    iput-boolean p5, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/a;->e:Z

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/a;->a:Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;->access$0(Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;)Lcom/alipay/mobile/personalbase/service/PinyinSearchService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/PinyinSearchService;->loadPinyinLib()V

    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/a;->a:Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/a;->c:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/a;->d:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;->access$1(Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;Ljava/util/HashMap;Ljava/util/List;)V

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/a;->a:Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;->access$0(Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;)Lcom/alipay/mobile/personalbase/service/PinyinSearchService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/PinyinSearchService;->releasePinyinLib()V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/a;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/a;->a:Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/a;->c:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/a;->d:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;->access$2(Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;Ljava/util/HashMap;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/a;->a:Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/a;->c:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/a;->d:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;->access$3(Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;Ljava/util/HashMap;Ljava/util/List;)V

    goto :goto_0
.end method
