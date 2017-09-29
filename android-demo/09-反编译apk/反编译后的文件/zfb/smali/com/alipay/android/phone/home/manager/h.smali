.class final Lcom/alipay/android/phone/home/manager/h;
.super Ljava/lang/Object;
.source "AppItemView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/manager/AppItemView;

.field private final synthetic b:Lcom/alipay/mobile/framework/service/ext/openplatform/RedPointStatusChangeNotify;

.field private final synthetic c:Lcom/alipay/android/phone/home/manager/ViewHolder;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/manager/AppItemView;Lcom/alipay/mobile/framework/service/ext/openplatform/RedPointStatusChangeNotify;Lcom/alipay/android/phone/home/manager/ViewHolder;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/home/manager/h;->a:Lcom/alipay/android/phone/home/manager/AppItemView;

    iput-object p2, p0, Lcom/alipay/android/phone/home/manager/h;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/RedPointStatusChangeNotify;

    iput-object p3, p0, Lcom/alipay/android/phone/home/manager/h;->c:Lcom/alipay/android/phone/home/manager/ViewHolder;

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 168
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/h;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/RedPointStatusChangeNotify;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/RedPointStatusChangeNotify;->isRedPtVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/h;->a:Lcom/alipay/android/phone/home/manager/AppItemView;

    invoke-static {v0}, Lcom/alipay/android/phone/home/manager/AppItemView;->access$1(Lcom/alipay/android/phone/home/manager/AppItemView;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 169
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/h;->c:Lcom/alipay/android/phone/home/manager/ViewHolder;

    iget-object v0, v0, Lcom/alipay/android/phone/home/manager/ViewHolder;->f:Lcom/alipay/android/phone/home/widget/AdCornerView;

    invoke-virtual {v0, v2}, Lcom/alipay/android/phone/home/widget/AdCornerView;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/h;->c:Lcom/alipay/android/phone/home/manager/ViewHolder;

    iget-object v0, v0, Lcom/alipay/android/phone/home/manager/ViewHolder;->g:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/h;->a:Lcom/alipay/android/phone/home/manager/AppItemView;

    invoke-static {v0}, Lcom/alipay/android/phone/home/manager/AppItemView;->access$1(Lcom/alipay/android/phone/home/manager/AppItemView;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->setRedPointStatus(Z)V

    .line 174
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/h;->a:Lcom/alipay/android/phone/home/manager/AppItemView;

    invoke-static {v0}, Lcom/alipay/android/phone/home/manager/AppItemView;->access$1(Lcom/alipay/android/phone/home/manager/AppItemView;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "20000081"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/h;->c:Lcom/alipay/android/phone/home/manager/ViewHolder;

    iget-object v0, v0, Lcom/alipay/android/phone/home/manager/ViewHolder;->h:Lcom/alipay/android/phone/home/ui/CommonBadgeView;

    invoke-virtual {v0, v2}, Lcom/alipay/android/phone/home/ui/CommonBadgeView;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/h;->c:Lcom/alipay/android/phone/home/manager/ViewHolder;

    iget-object v0, v0, Lcom/alipay/android/phone/home/manager/ViewHolder;->i:Lcom/alipay/android/phone/home/ui/MoreBadgeView;

    invoke-virtual {v0, v3}, Lcom/alipay/android/phone/home/ui/MoreBadgeView;->setVisibility(I)V

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/h;->c:Lcom/alipay/android/phone/home/manager/ViewHolder;

    iget-object v0, v0, Lcom/alipay/android/phone/home/manager/ViewHolder;->i:Lcom/alipay/android/phone/home/ui/MoreBadgeView;

    invoke-virtual {v0, v2}, Lcom/alipay/android/phone/home/ui/MoreBadgeView;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/h;->c:Lcom/alipay/android/phone/home/manager/ViewHolder;

    iget-object v0, v0, Lcom/alipay/android/phone/home/manager/ViewHolder;->h:Lcom/alipay/android/phone/home/ui/CommonBadgeView;

    invoke-virtual {v0, v3}, Lcom/alipay/android/phone/home/ui/CommonBadgeView;->setVisibility(I)V

    goto :goto_0

    .line 181
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/h;->a:Lcom/alipay/android/phone/home/manager/AppItemView;

    invoke-static {v0}, Lcom/alipay/android/phone/home/manager/AppItemView;->access$1(Lcom/alipay/android/phone/home/manager/AppItemView;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/h;->a:Lcom/alipay/android/phone/home/manager/AppItemView;

    invoke-static {v0}, Lcom/alipay/android/phone/home/manager/AppItemView;->access$1(Lcom/alipay/android/phone/home/manager/AppItemView;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->setRedPointStatus(Z)V

    .line 183
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/h;->c:Lcom/alipay/android/phone/home/manager/ViewHolder;

    iget-object v0, v0, Lcom/alipay/android/phone/home/manager/ViewHolder;->h:Lcom/alipay/android/phone/home/ui/CommonBadgeView;

    invoke-virtual {v0, v2}, Lcom/alipay/android/phone/home/ui/CommonBadgeView;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/h;->c:Lcom/alipay/android/phone/home/manager/ViewHolder;

    iget-object v0, v0, Lcom/alipay/android/phone/home/manager/ViewHolder;->i:Lcom/alipay/android/phone/home/ui/MoreBadgeView;

    invoke-virtual {v0, v2}, Lcom/alipay/android/phone/home/ui/MoreBadgeView;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/h;->a:Lcom/alipay/android/phone/home/manager/AppItemView;

    invoke-static {v0}, Lcom/alipay/android/phone/home/manager/AppItemView;->access$1(Lcom/alipay/android/phone/home/manager/AppItemView;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "20000081"

    if-ne v0, v1, :cond_4

    .line 188
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getInstance()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;

    move-result-object v0

    .line 189
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformConfig;->getMoreAppNewFlag()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 190
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/h;->c:Lcom/alipay/android/phone/home/manager/ViewHolder;

    iget-object v0, v0, Lcom/alipay/android/phone/home/manager/ViewHolder;->g:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    .line 204
    :goto_1
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/h;->a:Lcom/alipay/android/phone/home/manager/AppItemView;

    invoke-static {v0}, Lcom/alipay/android/phone/home/manager/AppItemView;->access$1(Lcom/alipay/android/phone/home/manager/AppItemView;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/home/manager/h;->a:Lcom/alipay/android/phone/home/manager/AppItemView;

    invoke-static {v1}, Lcom/alipay/android/phone/home/manager/AppItemView;->access$0(Lcom/alipay/android/phone/home/manager/AppItemView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isNeedShowNewFlag(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/h;->a:Lcom/alipay/android/phone/home/manager/AppItemView;

    invoke-static {v0}, Lcom/alipay/android/phone/home/manager/AppItemView;->access$1(Lcom/alipay/android/phone/home/manager/AppItemView;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isHasAdCornerMark()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/h;->a:Lcom/alipay/android/phone/home/manager/AppItemView;

    invoke-static {v0}, Lcom/alipay/android/phone/home/manager/AppItemView;->access$1(Lcom/alipay/android/phone/home/manager/AppItemView;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "20000081"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/h;->a:Lcom/alipay/android/phone/home/manager/AppItemView;

    invoke-static {v0}, Lcom/alipay/android/phone/home/manager/AppItemView;->access$1(Lcom/alipay/android/phone/home/manager/AppItemView;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "10000111"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/h;->c:Lcom/alipay/android/phone/home/manager/ViewHolder;

    iget-object v0, v0, Lcom/alipay/android/phone/home/manager/ViewHolder;->f:Lcom/alipay/android/phone/home/widget/AdCornerView;

    invoke-virtual {v0, v3}, Lcom/alipay/android/phone/home/widget/AdCornerView;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/h;->a:Lcom/alipay/android/phone/home/manager/AppItemView;

    invoke-static {v0}, Lcom/alipay/android/phone/home/manager/AppItemView;->access$1(Lcom/alipay/android/phone/home/manager/AppItemView;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->setHasAdCornerMark(Z)V

    goto/16 :goto_0

    .line 192
    :cond_3
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/h;->c:Lcom/alipay/android/phone/home/manager/ViewHolder;

    iget-object v0, v0, Lcom/alipay/android/phone/home/manager/ViewHolder;->g:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    goto :goto_1

    .line 196
    :cond_4
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/h;->a:Lcom/alipay/android/phone/home/manager/AppItemView;

    invoke-static {v0}, Lcom/alipay/android/phone/home/manager/AppItemView;->access$1(Lcom/alipay/android/phone/home/manager/AppItemView;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/home/manager/h;->a:Lcom/alipay/android/phone/home/manager/AppItemView;

    invoke-static {v1}, Lcom/alipay/android/phone/home/manager/AppItemView;->access$0(Lcom/alipay/android/phone/home/manager/AppItemView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isNeedShowNewFlag(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 197
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/h;->c:Lcom/alipay/android/phone/home/manager/ViewHolder;

    iget-object v0, v0, Lcom/alipay/android/phone/home/manager/ViewHolder;->g:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/h;->a:Lcom/alipay/android/phone/home/manager/AppItemView;

    invoke-static {v0}, Lcom/alipay/android/phone/home/manager/AppItemView;->access$1(Lcom/alipay/android/phone/home/manager/AppItemView;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->setHasAdCornerMark(Z)V

    goto :goto_1

    .line 200
    :cond_5
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/h;->c:Lcom/alipay/android/phone/home/manager/ViewHolder;

    iget-object v0, v0, Lcom/alipay/android/phone/home/manager/ViewHolder;->g:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    goto/16 :goto_1
.end method
