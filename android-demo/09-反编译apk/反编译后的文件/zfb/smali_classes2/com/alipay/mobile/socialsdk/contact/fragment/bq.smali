.class final Lcom/alipay/mobile/socialsdk/contact/fragment/bq;
.super Ljava/lang/Object;
.source "MutliSelectWithAccountInputFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/bq;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 170
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/bq;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 171
    if-lez v0, :cond_0

    .line 172
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/bq;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;

    invoke-virtual {v1}, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/socialsdk/R$string;->confirm_with_num:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 173
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/bq;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;

    iget-object v1, v1, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->v:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getGenericButton()Lcom/alipay/mobile/commonui/widget/APButton;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    .line 178
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/bq;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;

    iget-object v1, v1, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->v:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonText(Ljava/lang/String;)V

    .line 179
    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/bq;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/socialsdk/R$string;->confirm:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 176
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/bq;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;

    iget-object v1, v1, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->v:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getGenericButton()Lcom/alipay/mobile/commonui/widget/APButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    goto :goto_0
.end method
