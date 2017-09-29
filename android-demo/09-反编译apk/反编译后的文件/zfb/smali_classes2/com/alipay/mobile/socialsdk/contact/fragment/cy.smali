.class final Lcom/alipay/mobile/socialsdk/contact/fragment/cy;
.super Ljava/lang/Object;
.source "SingleFriendSelectFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;

.field private final synthetic b:Lcom/alipay/mobile/framework/MicroApplicationContext;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;Lcom/alipay/mobile/framework/MicroApplicationContext;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/cy;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/cy;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iput-object p3, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/cy;->c:Ljava/lang/String;

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/cy;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->w:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/cy;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;

    iget-object v1, v1, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->u:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/api/util/KeyBoardUtil;->hideKeyBoard(Landroid/content/Context;Landroid/view/View;)V

    .line 211
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/cy;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactsService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactsService;

    .line 212
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/contact/ContactsService;->getAdditionalOperationCallback()Lcom/alipay/mobile/framework/service/ext/contact/AdditionalOperationCallback;

    move-result-object v0

    .line 213
    if-eqz v0, :cond_0

    .line 214
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/cy;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 215
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/cy;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;

    iget-object v1, v1, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->w:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-interface {v0, v1, p1}, Lcom/alipay/mobile/framework/service/ext/contact/AdditionalOperationCallback;->onClick(Landroid/content/Context;Landroid/view/View;)V

    .line 217
    :cond_0
    return-void
.end method
