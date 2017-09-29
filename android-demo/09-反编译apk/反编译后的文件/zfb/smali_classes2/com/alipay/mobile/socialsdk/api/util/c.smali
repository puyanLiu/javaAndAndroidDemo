.class final Lcom/alipay/mobile/socialsdk/api/util/c;
.super Ljava/lang/Object;
.source "CustomDialogUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic a:Lcom/alipay/mobile/socialsdk/api/util/CustomDialogUtil$onConfirmCallback;

.field private final synthetic b:Landroid/widget/EditText;

.field private final synthetic c:Landroid/app/Dialog;

.field private final synthetic d:Z

.field private final synthetic e:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/api/util/CustomDialogUtil$onConfirmCallback;Landroid/widget/EditText;Landroid/app/Dialog;ZLandroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/api/util/c;->a:Lcom/alipay/mobile/socialsdk/api/util/CustomDialogUtil$onConfirmCallback;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/api/util/c;->b:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/alipay/mobile/socialsdk/api/util/c;->c:Landroid/app/Dialog;

    iput-boolean p4, p0, Lcom/alipay/mobile/socialsdk/api/util/c;->d:Z

    iput-object p5, p0, Lcom/alipay/mobile/socialsdk/api/util/c;->e:Landroid/content/Context;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 121
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/util/c;->a:Lcom/alipay/mobile/socialsdk/api/util/CustomDialogUtil$onConfirmCallback;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/util/c;->a:Lcom/alipay/mobile/socialsdk/api/util/CustomDialogUtil$onConfirmCallback;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/api/util/c;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/api/util/c;->c:Landroid/app/Dialog;

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/api/util/c;->b:Landroid/widget/EditText;

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/socialsdk/api/util/CustomDialogUtil$onConfirmCallback;->onConfirm(Ljava/lang/String;Landroid/app/Dialog;Landroid/widget/EditText;)V

    .line 125
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/util/c;->d:Z

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/util/c;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/api/util/c;->b:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/api/util/KeyBoardUtil;->hideKeyBoard(Landroid/content/Context;Landroid/view/View;)V

    .line 127
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/util/c;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 130
    :cond_1
    return-void
.end method
