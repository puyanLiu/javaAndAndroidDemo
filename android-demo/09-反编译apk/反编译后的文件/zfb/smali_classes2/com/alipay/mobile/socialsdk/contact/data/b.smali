.class final Lcom/alipay/mobile/socialsdk/contact/data/b;
.super Ljava/lang/Object;
.source "ContactDataManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/data/b;->a:Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;

    iput p2, p0, Lcom/alipay/mobile/socialsdk/contact/data/b;->b:I

    .line 480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 483
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/b;->a:Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->b(Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;)Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;->tryToRefreshData(Z)V

    .line 484
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/b;->a:Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->b(Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;)Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;

    move-result-object v0

    const-string/jumbo v1, "mobile_loaded_order"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;->getOrderPreferences(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v0

    .line 485
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    .line 486
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/data/b;->a:Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;->b(Lcom/alipay/mobile/socialsdk/contact/data/ContactDataManager;)Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;

    move-result-object v1

    iget v2, p0, Lcom/alipay/mobile/socialsdk/contact/data/b;->b:I

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/socialsdk/contact/processer/MobileRecordProcesser;->trySetMobileListAllLoaded(II)V

    .line 487
    return-void
.end method
