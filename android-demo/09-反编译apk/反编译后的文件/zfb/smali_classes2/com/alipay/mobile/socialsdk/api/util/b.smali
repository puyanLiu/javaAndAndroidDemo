.class final Lcom/alipay/mobile/socialsdk/api/util/b;
.super Ljava/lang/Object;
.source "CustomDialogUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic a:Landroid/content/Context;

.field private final synthetic b:Landroid/widget/EditText;

.field private final synthetic c:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/widget/EditText;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/api/util/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/api/util/b;->b:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/alipay/mobile/socialsdk/api/util/b;->c:Landroid/app/Dialog;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/util/b;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/api/util/b;->b:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/api/util/KeyBoardUtil;->hideKeyBoard(Landroid/content/Context;Landroid/view/View;)V

    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/util/b;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 113
    return-void
.end method
