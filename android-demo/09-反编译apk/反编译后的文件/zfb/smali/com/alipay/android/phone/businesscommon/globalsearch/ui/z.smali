.class final Lcom/alipay/android/phone/businesscommon/globalsearch/ui/z;
.super Ljava/lang/Object;
.source "MorePageActivity.java"

# interfaces
.implements Lcom/alipay/android/phone/a/a/h;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/z;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 166
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/z;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->a(Z)V

    .line 167
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/z;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/z;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;

    invoke-static {v2}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->g(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 148
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/z;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;

    invoke-virtual {v0, v4}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->a(Z)V

    .line 149
    const-string/jumbo v0, "jiushi"

    const-string/jumbo v1, "MoreDataFragment notifyRefrash"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/z;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->h(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/z;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->i(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 152
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/z;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->j(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;)V

    .line 153
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/z;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;Z)V

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/z;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->g(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 156
    const-string/jumbo v0, "search"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u4e8c\u7ea7\u9875\u9762\u641c\u7d22\u8fd4\u56de\u7ed3\u679c:>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "<\u4e0e\u5f53\u524d\u641c\u7d22\u8bcd\uff1a>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/z;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;

    invoke-static {v2}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->g(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "<\u4e0d\u4e00\u81f4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :goto_0
    return-void

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/z;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->i(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/z;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;

    invoke-static {v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->b(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;)Lcom/alipay/android/phone/a/a/b;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/z;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;

    invoke-static {v2}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->c(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/z;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;

    invoke-static {v3}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->k(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/android/phone/a/a/b;->a(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 160
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/z;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;

    invoke-static {v0, v4}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;Z)V

    .line 161
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/z;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/z;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;

    invoke-static {v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->i(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->a(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0
.end method
