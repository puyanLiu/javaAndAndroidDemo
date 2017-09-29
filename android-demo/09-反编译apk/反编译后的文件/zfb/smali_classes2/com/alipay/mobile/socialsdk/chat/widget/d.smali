.class final Lcom/alipay/mobile/socialsdk/chat/widget/d;
.super Ljava/lang/Object;
.source "ShareDialogForward.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogForward;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogForward;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/chat/widget/d;->a:Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogForward;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/d;->a:Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogForward;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogForward;->dismiss()V

    .line 83
    return-void
.end method
