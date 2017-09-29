.class final Lcom/alipay/mobile/socialsdk/chat/widget/c;
.super Ljava/lang/Object;
.source "ShareDialogForward.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogForward;

.field private final synthetic b:Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialog$OnShareButtonClickListener;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogForward;Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialog$OnShareButtonClickListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/chat/widget/c;->a:Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogForward;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/chat/widget/c;->b:Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialog$OnShareButtonClickListener;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/c;->a:Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogForward;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogForward;->dismiss()V

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/c;->b:Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialog$OnShareButtonClickListener;

    const/4 v1, -0x1

    invoke-interface {v0, v2, v2, v1}, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialog$OnShareButtonClickListener;->onClick(Lcom/alipay/mobile/personalbase/model/ShareModel;Ljava/lang/String;I)V

    .line 76
    return-void
.end method
