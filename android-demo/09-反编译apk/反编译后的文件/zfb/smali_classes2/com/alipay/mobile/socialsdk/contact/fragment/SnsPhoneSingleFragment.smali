.class public Lcom/alipay/mobile/socialsdk/contact/fragment/SnsPhoneSingleFragment;
.super Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;
.source "SnsPhoneSingleFragment.java"


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EFragment;
    resName = "phone_book_single_layout"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SnsPhoneSingleFragment;->i:Lcom/alipay/mobile/socialsdk/api/widget/InfiniteScrollListView;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/api/widget/InfiniteScrollListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 22
    if-nez v0, :cond_1

    .line 40
    :cond_0
    :goto_0
    return-void

    .line 25
    :cond_1
    const-string/jumbo v1, "phoneNo"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 26
    if-eqz v2, :cond_0

    .line 29
    const/4 v1, 0x0

    .line 30
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SnsPhoneSingleFragment;->m:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SnsPhoneSingleFragment;->m:Landroid/os/Bundle;

    const-string/jumbo v3, "start_param"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 32
    instance-of v3, v0, Lcom/alipay/mobile/common/share/ShareContent;

    if-eqz v3, :cond_2

    .line 33
    check-cast v0, Lcom/alipay/mobile/common/share/ShareContent;

    .line 37
    :goto_1
    :try_start_0
    invoke-virtual {p0, v2, v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/SnsPhoneSingleFragment;->sendShortLinkSms(Ljava/lang/String;Lcom/alipay/mobile/common/share/ShareContent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method protected sendShortLinkSms(Ljava/lang/String;Lcom/alipay/mobile/common/share/ShareContent;)V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 44
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/util/SnsLinkUtil;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/SnsPhoneSingleFragment;->l:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/socialsdk/contact/util/SnsLinkUtil;-><init>(Lcom/alipay/mobile/framework/app/ui/BaseActivity;Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;)V

    .line 45
    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/socialsdk/contact/util/SnsLinkUtil;->testShorLinkService(Ljava/lang/String;Lcom/alipay/mobile/common/share/ShareContent;)V

    .line 46
    return-void
.end method
