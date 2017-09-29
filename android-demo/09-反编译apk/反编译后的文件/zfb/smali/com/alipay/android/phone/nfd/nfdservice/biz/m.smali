.class final Lcom/alipay/android/phone/nfd/nfdservice/biz/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/phone/nfd/nfdservice/biz/z;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/nfd/nfdservice/biz/l;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/nfd/nfdservice/biz/l;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/m;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/m;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/l;

    invoke-static {v0, p1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/l;->a(Lcom/alipay/android/phone/nfd/nfdservice/biz/l;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/m;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/l;

    invoke-static {v1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/l;->a(Lcom/alipay/android/phone/nfd/nfdservice/biz/l;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/m;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/l;

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/m;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/l;

    invoke-static {v1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/l;->b(Lcom/alipay/android/phone/nfd/nfdservice/biz/l;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/m;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/l;

    invoke-static {v2}, Lcom/alipay/android/phone/nfd/nfdservice/biz/l;->c(Lcom/alipay/android/phone/nfd/nfdservice/biz/l;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/m;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/l;

    invoke-static {v3}, Lcom/alipay/android/phone/nfd/nfdservice/biz/l;->d(Lcom/alipay/android/phone/nfd/nfdservice/biz/l;)I

    move-result v3

    iget-object v4, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/m;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/l;

    invoke-static {v4}, Lcom/alipay/android/phone/nfd/nfdservice/biz/l;->e(Lcom/alipay/android/phone/nfd/nfdservice/biz/l;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/m;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/l;

    invoke-static {v5}, Lcom/alipay/android/phone/nfd/nfdservice/biz/l;->a(Lcom/alipay/android/phone/nfd/nfdservice/biz/l;)Landroid/content/Intent;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/alipay/android/phone/nfd/nfdservice/biz/l;->a(Lcom/alipay/android/phone/nfd/nfdservice/biz/l;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;)V

    goto :goto_0
.end method
