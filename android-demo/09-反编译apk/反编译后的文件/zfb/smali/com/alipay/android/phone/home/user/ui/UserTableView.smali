.class public Lcom/alipay/android/phone/home/user/ui/UserTableView;
.super Lcom/alipay/mobile/commonui/widget/APRelativeLayout;
.source "UserTableView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private i:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private j:Lcom/alipay/android/phone/home/widget/UserAvatarImageView;

.field private k:Lcom/alipay/android/phone/home/widget/UserAvatarImageView;

.field private l:Lcom/alipay/android/phone/home/widget/UserAvatarImageView;

.field private m:Landroid/content/Context;

.field private n:Lcom/alipay/mobile/commonui/widget/APImageView;

.field private o:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

.field private p:Ljava/lang/String;

.field private q:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

.field private r:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

.field private s:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 103
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/alipay/android/phone/home/user/ui/UserTableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/android/phone/home/user/ui/UserTableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 120
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    const-string/jumbo v0, "UserTableView"

    iput-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserTableView;->a:Ljava/lang/String;

    .line 53
    iput v3, p0, Lcom/alipay/android/phone/home/user/ui/UserTableView;->b:I

    .line 54
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserTableView;->c:Ljava/lang/String;

    .line 95
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserTableView;->s:Ljava/lang/Boolean;

    .line 121
    iput-object p1, p0, Lcom/alipay/android/phone/home/user/ui/UserTableView;->m:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/openplatform/R$layout;->q:I

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    if-eqz p2, :cond_1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserTableView;->s:Ljava/lang/Boolean;

    sget-object v0, Lcom/alipay/android/phone/openplatform/R$styleable;->g:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/alipay/android/phone/home/user/ui/UserTableView;->b:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/android/phone/home/user/ui/UserTableView;->c:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :goto_0
    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->ai:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserTableView;->d:Landroid/view/View;

    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->aj:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserTableView;->e:Landroid/view/View;

    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->j:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserTableView;->f:Landroid/view/View;

    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->k:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserTableView;->g:Landroid/view/View;

    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->af:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserTableView;->n:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->ag:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserTableView;->h:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->ah:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserTableView;->i:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->u:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;

    iput-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserTableView;->j:Lcom/alipay/android/phone/home/widget/UserAvatarImageView;

    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->v:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;

    iput-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserTableView;->k:Lcom/alipay/android/phone/home/widget/UserAvatarImageView;

    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->w:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;

    iput-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserTableView;->l:Lcom/alipay/android/phone/home/widget/UserAvatarImageView;

    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->x:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iput-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserTableView;->o:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->U:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    iput-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserTableView;->q:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    iget-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserTableView;->s:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alipay/android/phone/home/user/ui/UserTableView;->b:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/user/ui/UserTableView;->setType(I)V

    iget-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserTableView;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/user/ui/UserTableView;->setLeftText(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p0}, Lcom/alipay/android/phone/home/user/ui/UserTableView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    return-void

    .line 121
    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserTableView;->s:Ljava/lang/Boolean;

    iput v3, p0, Lcom/alipay/android/phone/home/user/ui/UserTableView;->b:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserTableView;->c:Ljava/lang/String;

    goto/16 :goto_0
.end method


# virtual methods
.method public getApp()Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserTableView;->r:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    return-object v0
.end method

.method public getIconView()Lcom/alipay/mobile/commonui/widget/APImageView;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserTableView;->n:Lcom/alipay/mobile/commonui/widget/APImageView;

    return-object v0
.end method

.method public getImageView1()Lcom/alipay/mobile/commonui/widget/APImageView;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserTableView;->j:Lcom/alipay/android/phone/home/widget/UserAvatarImageView;

    return-object v0
.end method

.method public getImageViewIndex(I)Lcom/alipay/mobile/commonui/widget/APImageView;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 230
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserTableView;->j:Lcom/alipay/android/phone/home/widget/UserAvatarImageView;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->setVisibility(I)V

    .line 232
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserTableView;->j:Lcom/alipay/android/phone/home/widget/UserAvatarImageView;

    .line 240
    :goto_0
    return-object v0

    .line 233
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserTableView;->k:Lcom/alipay/android/phone/home/widget/UserAvatarImageView;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserTableView;->k:Lcom/alipay/android/phone/home/widget/UserAvatarImageView;

    goto :goto_0

    .line 236
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 237
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserTableView;->l:Lcom/alipay/android/phone/home/widget/UserAvatarImageView;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserTableView;->l:Lcom/alipay/android/phone/home/widget/UserAvatarImageView;

    goto :goto_0

    .line 240
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInsertView()Lcom/alipay/mobile/commonui/widget/APLinearLayout;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserTableView;->o:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    return-object v0
.end method

.method public getRedFlag()Lcom/alipay/mobile/mpass/badge/ui/BadgeView;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserTableView;->q:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .prologue
    .line 268
    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 285
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserTableView;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 286
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserTableView;->r:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    if-eqz v0, :cond_0

    .line 287
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "UserTableView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "appId=>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/android/phone/home/user/ui/UserTableView;->p:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; app.type=>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/phone/home/user/ui/UserTableView;->r:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallerType()Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 288
    const-string/jumbo v3, " ;schemeUri=>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/phone/home/user/ui/UserTableView;->r:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getSchemeUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 287
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->print(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserTableView;->p:Ljava/lang/String;

    const-string/jumbo v1, "20000725"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 293
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/android/phone/home/user/ui/UserTableView;->m:Landroid/content/Context;

    const-class v2, Lcom/alipay/android/phone/home/user/ui/UserSettingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 294
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 295
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    .line 296
    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v2

    .line 295
    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    .line 303
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/user/ui/UserTableView;->getRedFlag()Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->getWidgetId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 304
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/user/ui/UserTableView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/mpass/badge/BadgeManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/android/phone/home/user/ui/UserTableView;->getRedFlag()Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->getWidgetId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->ackClick(Ljava/lang/String;)V

    .line 306
    :cond_2
    return-void

    .line 298
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 299
    const-string/jumbo v1, "20000002"

    iget-object v2, p0, Lcom/alipay/android/phone/home/user/ui/UserTableView;->p:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 160
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "UserTableView"

    const-string/jumbo v2, "UserTableView onFinishInflate()"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method public setApp(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/alipay/android/phone/home/user/ui/UserTableView;->r:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 277
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lcom/alipay/android/phone/home/user/ui/UserTableView;->p:Ljava/lang/String;

    .line 265
    return-void
.end method

.method public setLeftText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 199
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserTableView;->h:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    :cond_0
    return-void
.end method

.method public setRightText(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 205
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserTableView;->i:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserTableView;->i:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    :cond_0
    return-void
.end method

.method public setType(I)V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 169
    packed-switch p1, :pswitch_data_0

    .line 187
    :goto_0
    :pswitch_0
    return-void

    .line 171
    :pswitch_1
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserTableView;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserTableView;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 175
    :pswitch_2
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserTableView;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserTableView;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 179
    :pswitch_3
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserTableView;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserTableView;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserTableView;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 184
    :pswitch_4
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserTableView;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserTableView;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/ui/UserTableView;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 169
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
