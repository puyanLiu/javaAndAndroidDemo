.class final Lcom/alipay/mobile/socialsdk/contact/fragment/ca;
.super Ljava/lang/Object;
.source "PhoneBookSingleFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;

.field private final synthetic b:Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ca;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ca;->b:Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;

    iput-object p3, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ca;->c:Ljava/lang/String;

    .line 521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 524
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ca;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->access$5(Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;)Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ca;->b:Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;

    iget-object v1, v1, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;->phoneNo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->queryAccountByPhoneNumber(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 525
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 526
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ca;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ca;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->showSelectItem(Ljava/lang/String;Ljava/util/List;)V

    .line 528
    :cond_0
    return-void
.end method
