.class final Lcom/alipay/mobile/socialsdk/contact/data/a;
.super Ljava/lang/Object;
.source "ContactDataManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;

.field private final synthetic b:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/data/a;->a:Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/contact/data/a;->b:Ljava/util/List;

    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 395
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/a;->a:Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->a(Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;)Lcom/alipay/mobile/socialsdk/contact/processer/GroupInfoProcesser;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/data/a;->b:Ljava/util/List;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/socialsdk/contact/processer/GroupInfoProcesser;->queryAndLoadGroupProfile(Ljava/util/List;Z)Ljava/util/List;

    .line 396
    return-void
.end method
