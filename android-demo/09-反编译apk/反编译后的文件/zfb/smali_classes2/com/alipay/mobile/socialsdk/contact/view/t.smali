.class final Lcom/alipay/mobile/socialsdk/contact/view/t;
.super Ljava/lang/Object;
.source "VarifyNameMgrForContacts.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameMgrForContacts;

.field private final synthetic b:Lcom/alipay/mobile/commonui/widget/APEditText;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameMgrForContacts;Lcom/alipay/mobile/commonui/widget/APEditText;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/view/t;->a:Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameMgrForContacts;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/contact/view/t;->b:Lcom/alipay/mobile/commonui/widget/APEditText;

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/view/t;->a:Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameMgrForContacts;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameMgrForContacts;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/view/t;->b:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/api/util/KeyBoardUtil;->hideKeyBoard(Landroid/content/Context;Landroid/view/View;)V

    .line 168
    return-void
.end method
