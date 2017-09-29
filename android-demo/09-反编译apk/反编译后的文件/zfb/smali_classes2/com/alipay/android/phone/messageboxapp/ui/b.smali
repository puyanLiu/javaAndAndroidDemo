.class final Lcom/alipay/android/phone/messageboxapp/ui/b;
.super Ljava/lang/Object;
.source "MsgboxAppActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/messageboxapp/ui/b;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 174
    iget-object v2, p0, Lcom/alipay/android/phone/messageboxapp/ui/b;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    invoke-static {v2}, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->c(Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;)Lcom/alipay/android/phone/messageboxapp/ui/h;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alipay/android/phone/messageboxapp/ui/b;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    invoke-static {v2}, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->b(Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;)Lcom/alipay/android/phone/messageboxapp/ui/h;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 175
    iget-object v2, p0, Lcom/alipay/android/phone/messageboxapp/ui/b;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    invoke-static {v2}, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->d(Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 177
    iget-object v2, p0, Lcom/alipay/android/phone/messageboxapp/ui/b;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    iget-object v3, p0, Lcom/alipay/android/phone/messageboxapp/ui/b;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    invoke-static {v3}, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->d(Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v2, v0}, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->a(Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;Z)V

    .line 178
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/b;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    invoke-static {v0}, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->e(Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;)Lcom/alipay/mobile/commonui/widget/APTitleBar;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/android/phone/messageboxapp/ui/b;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    sget v3, Lcom/alipay/android/phone/messageboxapp/R$string;->edit:I

    invoke-virtual {v2, v3}, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonText(Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/b;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    iget-object v0, v0, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->b:Lcom/alipay/mobile/commonui/widget/APSwitchTab;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/b;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    invoke-static {v0}, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->c(Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;)Lcom/alipay/android/phone/messageboxapp/ui/h;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/b;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    invoke-static {v1}, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->d(Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/messageboxapp/ui/h;->a(Z)V

    .line 182
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/b;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    invoke-static {v0}, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->b(Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;)Lcom/alipay/android/phone/messageboxapp/ui/h;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/b;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    invoke-static {v1}, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->d(Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/messageboxapp/ui/h;->a(Z)V

    .line 194
    :cond_1
    :goto_0
    return-void

    .line 185
    :cond_2
    iget-object v2, p0, Lcom/alipay/android/phone/messageboxapp/ui/b;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    iget-object v3, p0, Lcom/alipay/android/phone/messageboxapp/ui/b;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    invoke-static {v3}, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->d(Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    invoke-static {v2, v1}, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->a(Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;Z)V

    .line 186
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/b;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    invoke-static {v0}, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->e(Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;)Lcom/alipay/mobile/commonui/widget/APTitleBar;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/b;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    sget v2, Lcom/alipay/android/phone/messageboxapp/R$string;->alert_cancel:I

    invoke-virtual {v1, v2}, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonText(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/b;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    iget-object v0, v0, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->b:Lcom/alipay/mobile/commonui/widget/APSwitchTab;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/b;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    invoke-static {v0}, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->c(Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;)Lcom/alipay/android/phone/messageboxapp/ui/h;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/b;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    invoke-static {v1}, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->d(Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/messageboxapp/ui/h;->a(Z)V

    .line 190
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/b;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    invoke-static {v0}, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->b(Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;)Lcom/alipay/android/phone/messageboxapp/ui/h;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/b;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    invoke-static {v1}, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->d(Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/messageboxapp/ui/h;->a(Z)V

    goto :goto_0

    :cond_3
    move v1, v0

    .line 185
    goto :goto_1
.end method
