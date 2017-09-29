.class Lcom/flybird/FBImg$1;
.super Ljava/lang/Object;
.source "FBImg.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/flybird/FBImg;


# direct methods
.method constructor <init>(Lcom/flybird/FBImg;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/flybird/FBImg$1;->a:Lcom/flybird/FBImg;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v6, 0x0

    .line 121
    const-string/jumbo v0, "indicatior"

    iget-object v1, p0, Lcom/flybird/FBImg$1;->a:Lcom/flybird/FBImg;

    invoke-static {v1}, Lcom/flybird/FBImg;->a(Lcom/flybird/FBImg;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/flybird/FBImg$1;->a:Lcom/flybird/FBImg;

    invoke-static {v0}, Lcom/flybird/FBImg;->b(Lcom/flybird/FBImg;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/flybird/FBImg$1;->a:Lcom/flybird/FBImg;

    invoke-static {v1}, Lcom/flybird/FBImg;->c(Lcom/flybird/FBImg;)Lcom/flybird/FBDocument;

    move-result-object v1

    iget-object v1, v1, Lcom/flybird/FBDocument;->mContext:Landroid/app/Activity;

    const-string/jumbo v2, "alipay_msp_indicatior_loading"

    invoke-static {v1, v2}, Lcom/alipay/android/app/template/ResUtils;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 128
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/flybird/FBImg$1;->a:Lcom/flybird/FBImg;

    invoke-static {v0}, Lcom/flybird/FBImg;->d(Lcom/flybird/FBImg;)[I

    move-result-object v3

    .line 125
    iget-object v0, p0, Lcom/flybird/FBImg$1;->a:Lcom/flybird/FBImg;

    invoke-static {v0}, Lcom/flybird/FBImg;->b(Lcom/flybird/FBImg;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/flybird/FBImg$1;->a:Lcom/flybird/FBImg;

    invoke-static {v1}, Lcom/flybird/FBImg;->a(Lcom/flybird/FBImg;)Ljava/lang/String;

    move-result-object v1

    aget v2, v3, v6

    const/4 v4, 0x1

    aget v3, v3, v4

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/flybird/FBImg$1;->a:Lcom/flybird/FBImg;

    invoke-static {v5}, Lcom/flybird/FBImg;->c(Lcom/flybird/FBImg;)Lcom/flybird/FBDocument;

    move-result-object v5

    iget-object v5, v5, Lcom/flybird/FBDocument;->mContext:Landroid/app/Activity;

    .line 126
    iget-object v7, p0, Lcom/flybird/FBImg$1;->a:Lcom/flybird/FBImg;

    invoke-static {v7}, Lcom/flybird/FBImg;->e(Lcom/flybird/FBImg;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/flybird/FBImg$1;->a:Lcom/flybird/FBImg;

    invoke-static {v8}, Lcom/flybird/FBImg;->f(Lcom/flybird/FBImg;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/flybird/FBImg$1;->a:Lcom/flybird/FBImg;

    invoke-static {v9}, Lcom/flybird/FBImg;->g(Lcom/flybird/FBImg;)I

    move-result v9

    iget-object v10, p0, Lcom/flybird/FBImg$1;->a:Lcom/flybird/FBImg;

    iget-object v11, p0, Lcom/flybird/FBImg$1;->a:Lcom/flybird/FBImg;

    invoke-static {v11}, Lcom/flybird/FBImg;->h(Lcom/flybird/FBImg;)Z

    move-result v11

    .line 125
    invoke-static/range {v0 .. v11}, Lcom/alipay/android/app/template/UiAssistantor;->loadImage(Landroid/view/View;Ljava/lang/String;IILjava/lang/String;Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;ILcom/flybird/ILayoutListener;Z)V

    goto :goto_0
.end method
