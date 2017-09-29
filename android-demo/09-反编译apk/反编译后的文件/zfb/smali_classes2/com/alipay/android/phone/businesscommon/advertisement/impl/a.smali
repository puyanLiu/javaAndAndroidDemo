.class public final Lcom/alipay/android/phone/businesscommon/advertisement/impl/a;
.super Ljava/lang/Object;
.source "AdContent.java"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/a;->a:I

    .line 56
    iput v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/a;->b:I

    .line 59
    const-wide/high16 v0, 0x4052000000000000L    # 72.0

    invoke-static {p1, v0, v1}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/a;->a(Landroid/content/Context;D)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/a;->a:I

    .line 60
    return-void
.end method

.method private static a(Landroid/content/Context;D)I
    .locals 4

    .prologue
    .line 681
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 682
    float-to-double v0, v0

    mul-double/2addr v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    .line 683
    return v0
.end method

.method private a(Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 300
    .line 301
    iget-object v1, p1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->behaviors:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->behaviors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    move v1, v0

    .line 319
    :cond_1
    :goto_0
    return v1

    .line 304
    :cond_2
    iget-object v1, p1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->behaviors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 316
    iget-object v0, p1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->actionUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 317
    or-int/lit8 v1, v1, 0x10

    goto :goto_0

    .line 304
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectBehavior;

    .line 305
    const-string/jumbo v3, "ALWAYS"

    iget-object v4, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectBehavior;->behavior:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 306
    or-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 307
    :cond_5
    const-string/jumbo v3, "CLOSE_AFTER_SHUT"

    iget-object v4, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectBehavior;->behavior:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 308
    or-int/lit8 v0, v1, 0x2

    move v1, v0

    goto :goto_1

    .line 309
    :cond_6
    const-string/jumbo v3, "CLOSE_AFTER_JUMP"

    iget-object v4, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectBehavior;->behavior:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 310
    or-int/lit8 v0, v1, 0x8

    move v1, v0

    goto :goto_1

    .line 311
    :cond_7
    const-string/jumbo v3, "CLOSE_AFTER_MOMENT"

    iget-object v4, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectBehavior;->behavior:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 312
    or-int/lit8 v1, v1, 0x4

    .line 313
    iget v0, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectBehavior;->showTimes:I

    iput v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/a;->b:I

    goto :goto_1
.end method

.method private a(Landroid/app/Activity;Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;Z)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v1, 0x0

    .line 380
    .line 381
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 457
    :cond_0
    :goto_0
    return-object v1

    .line 383
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 384
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 383
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 386
    iget-object v0, p3, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->contentType:Ljava/lang/String;

    const-string/jumbo v3, "TEXT"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 387
    iget-object v0, p2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceCode:Ljava/lang/String;

    iget-object v3, p3, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->actionUrl:Ljava/lang/String;

    invoke-direct {p0, p1, v0, p3}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/a;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;)Landroid/view/View;

    move-result-object v0

    .line 389
    :goto_1
    iget-object v3, p3, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->contentType:Ljava/lang/String;

    const-string/jumbo v4, "PIC"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 390
    if-eqz p4, :cond_5

    .line 391
    iget-object v0, p3, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->shortImgUrl:Ljava/lang/String;

    iget-object v3, p3, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->actionUrl:Ljava/lang/String;

    .line 392
    div-int/lit8 v2, v2, 0x2

    .line 391
    invoke-static {p1, v0, v2}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/a;->a(Landroid/app/Activity;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    .line 398
    :goto_2
    iget-object v0, p3, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->contentType:Ljava/lang/String;

    const-string/jumbo v3, "URL"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 400
    :try_start_0
    iget-object v3, p3, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->content:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_2

    if-nez v3, :cond_6

    :cond_2
    move-object v0, v1

    :goto_3
    move-object v2, v0

    .line 405
    :cond_3
    :goto_4
    iget-object v0, p3, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->contentType:Ljava/lang/String;

    const-string/jumbo v3, "HTML"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 406
    iget-object v2, p3, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->content:Ljava/lang/String;

    if-eqz p1, :cond_4

    if-nez v2, :cond_9

    .line 408
    :cond_4
    :goto_5
    if-eqz v1, :cond_0

    .line 445
    new-instance v0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/d;

    invoke-direct {v0, p0, p3, p2}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/d;-><init>(Lcom/alipay/android/phone/businesscommon/advertisement/impl/a;Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 394
    :cond_5
    iget-object v0, p3, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->hrefUrl:Ljava/lang/String;

    iget-object v3, p3, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->actionUrl:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/a;->a(Landroid/app/Activity;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    goto :goto_2

    .line 400
    :cond_6
    :try_start_1
    const-class v0, Lcom/alipay/mobile/h5container/service/H5Service;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/b;->c(Ljava/lang/Class;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5Service;

    if-nez v0, :cond_7

    const-string/jumbo v0, "H5Service == null,error in getWebViewByURL"

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->c(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_3

    :cond_7
    new-instance v4, Lcom/alipay/mobile/h5container/api/H5Bundle;

    invoke-direct {v4}, Lcom/alipay/mobile/h5container/api/H5Bundle;-><init>()V

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v6, "u"

    invoke-virtual {v5, v6, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/h5container/api/H5Bundle;->setParams(Landroid/os/Bundle;)V

    invoke-virtual {v0, p1, v4}, Lcom/alipay/mobile/h5container/service/H5Service;->createPage(Landroid/app/Activity;Lcom/alipay/mobile/h5container/api/H5Bundle;)Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getWebViewByURL:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->c(Ljava/lang/String;)V

    if-nez v0, :cond_8

    const-string/jumbo v0, "H5Page == null,error in getWebViewByURL"

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->c(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_3

    :cond_8
    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getContentView()Landroid/view/View;

    move-result-object v0

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    iget v5, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/a;->a:I

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 401
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->c(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 406
    :cond_9
    const-class v0, Lcom/alipay/mobile/h5container/service/H5Service;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/b;->c(Ljava/lang/Class;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5Service;

    invoke-virtual {v0, p1, v1}, Lcom/alipay/mobile/h5container/service/H5Service;->createPage(Landroid/app/Activity;Lcom/alipay/mobile/h5container/api/H5Bundle;)Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    const-string/jumbo v3, "text/html"

    const-string/jumbo v4, "utf-8"

    move-object v5, v1

    invoke-interface/range {v0 .. v5}, Lcom/alipay/mobile/h5container/api/H5Page;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getContentView()Landroid/view/View;

    move-result-object v1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/a;->a:I

    invoke-direct {v0, v7, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_5

    :cond_a
    move-object v1, v2

    goto/16 :goto_5

    :cond_b
    move-object v2, v0

    goto/16 :goto_2

    :cond_c
    move-object v0, v1

    goto/16 :goto_1
.end method

.method private static a(Landroid/app/Activity;Ljava/lang/String;I)Landroid/view/View;
    .locals 2

    .prologue
    .line 187
    if-nez p0, :cond_0

    .line 188
    const/4 v0, 0x0

    .line 201
    :goto_0
    return-object v0

    .line 189
    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "imgPath is empty:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->e(Ljava/lang/String;)V

    .line 192
    :cond_1
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 193
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 194
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 195
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 197
    :try_start_0
    new-instance v1, Lcom/alipay/android/phone/businesscommon/advertisement/c/c;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/businesscommon/advertisement/c/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1, v0, p2, p2}, Lcom/alipay/android/phone/businesscommon/advertisement/c/c;->a(Ljava/lang/String;Landroid/widget/ImageView;II)Lcom/alipay/android/phone/businesscommon/advertisement/c/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x41800000    # 16.0f

    .line 64
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 65
    :cond_0
    const/4 v0, 0x0

    .line 141
    :goto_0
    return-object v0

    .line 68
    :cond_1
    new-instance v2, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;

    invoke-direct {v2, p1, v4}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;-><init>(Landroid/content/Context;Z)V

    .line 70
    invoke-direct {p0, p3}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/a;->a(Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;)I

    move-result v0

    iget v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/a;->b:I

    invoke-virtual {v2, v0, v1, v4}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->setAnnouncementType(III)V

    .line 72
    iget-object v0, p3, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->content:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->setAnnouncement(Ljava/lang/String;)V

    .line 75
    const-wide/high16 v0, 0x4030000000000000L    # 16.0

    invoke-virtual {v2, v0, v1}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->setTextSize(D)V

    .line 78
    const-string/jumbo v0, "#a5a5a5"

    .line 80
    :try_start_0
    iget-object v1, p3, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->textColor:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 81
    iget-object v1, p3, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->textColor:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_1
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->setTextEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 91
    invoke-virtual {v2, v3, v3}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->setHorizontalMargin(FF)V

    .line 94
    const-string/jumbo v0, "#a5a5a5"

    .line 96
    :try_start_1
    iget-object v1, p3, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->widgetColor:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 97
    iget-object v1, p3, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->widgetColor:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->setBtnColor(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 105
    :goto_2
    const-string/jumbo v0, "#ffffff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 106
    const-string/jumbo v1, "#ececec"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 107
    iget-object v3, p3, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->bgColor:Ljava/lang/String;

    invoke-static {v3}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 108
    iget-object v0, p3, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->bgColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 110
    :cond_2
    iget-object v3, p3, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->fgColor:Ljava/lang/String;

    invoke-static {v3}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 111
    iget-object v1, p3, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->fgColor:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 113
    :cond_3
    invoke-virtual {v2, v0, v1}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->setBackgroundColor(II)V

    .line 115
    new-instance v0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/b;

    invoke-direct {v0, p0, p3, p2}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/b;-><init>(Lcom/alipay/android/phone/businesscommon/advertisement/impl/a;Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->setCallBack(Lcom/alipay/android/phone/businesscommon/advertisement/ui/f;)V

    move-object v0, v2

    .line 141
    goto :goto_0

    .line 83
    :cond_4
    :try_start_2
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->setTextColor(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 85
    :catch_0
    move-exception v1

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->setTextColor(I)V

    goto :goto_1

    .line 99
    :cond_5
    :try_start_3
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->setBtnColor(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 101
    :catch_1
    move-exception v1

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->setBtnColor(I)V

    goto :goto_2
.end method


# virtual methods
.method final a(Landroid/app/Activity;Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)Landroid/view/View;
    .locals 13

    .prologue
    const/4 v0, 0x0

    const/4 v12, -0x2

    const/4 v3, 0x0

    const/4 v1, -0x1

    const/4 v11, 0x1

    .line 212
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 213
    iget-object v2, p2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceObjectList:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 214
    iget-object v2, p2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceObjectList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 296
    :cond_0
    :goto_0
    return-object v0

    .line 217
    :cond_1
    iget-object v6, p2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceObjectList:Ljava/util/List;

    .line 218
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 223
    const-string/jumbo v0, "FULL"

    iget-object v2, p2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->location:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    move-object v2, p0

    .line 226
    :goto_1
    iput v0, v2, Lcom/alipay/android/phone/businesscommon/advertisement/impl/a;->a:I

    .line 230
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 231
    invoke-virtual {v4, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 232
    const-string/jumbo v0, "#e5e5e5"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    move v2, v3

    .line 234
    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_4

    move-object v0, v4

    .line 296
    goto :goto_0

    .line 226
    :cond_2
    iget v0, p2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->height:I

    if-gtz v0, :cond_3

    iget v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/a;->a:I

    move-object v2, p0

    goto :goto_1

    .line 227
    :cond_3
    iget v0, p2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->height:I

    int-to-double v4, v0

    .line 226
    invoke-static {p1, v4, v5}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/a;->a(Landroid/content/Context;D)I

    move-result v0

    move-object v2, p0

    goto :goto_1

    .line 236
    :cond_4
    if-nez v2, :cond_8

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-ne v0, v11, :cond_8

    .line 237
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    invoke-direct {p0, p1, p2, v0, v3}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/a;->a(Landroid/app/Activity;Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;Z)Landroid/view/View;

    move-result-object v5

    .line 239
    if-nez v5, :cond_5

    .line 240
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "List:item == null"

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    iget-object v0, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->contentType:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->e(Ljava/lang/String;)V

    .line 234
    :goto_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 243
    :cond_5
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    iget-object v0, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->contentType:Ljava/lang/String;

    const-string/jumbo v7, "TEXT"

    invoke-static {v0, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->height:I

    if-gtz v0, :cond_6

    .line 244
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v11, :cond_6

    .line 245
    const-wide/high16 v7, 0x4046000000000000L    # 44.0

    invoke-static {p1, v7, v8}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/a;->a(Landroid/content/Context;D)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/a;->a:I

    .line 247
    :cond_6
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 248
    iget v7, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/a;->a:I

    .line 247
    invoke-direct {v0, v1, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 249
    instance-of v7, v5, Landroid/widget/ImageView;

    if-eqz v7, :cond_7

    iget v7, p2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->height:I

    if-gtz v7, :cond_7

    .line 250
    iput v12, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 252
    :cond_7
    invoke-virtual {v4, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 254
    :cond_8
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 255
    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 256
    if-eqz v2, :cond_9

    .line 258
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 259
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v1, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 261
    invoke-virtual {v4, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    move v5, v3

    .line 265
    :goto_4
    const/4 v0, 0x2

    if-lt v5, v0, :cond_a

    .line 287
    add-int/lit8 v2, v2, 0x1

    .line 289
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 288
    invoke-virtual {v4, v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 267
    :cond_a
    add-int v0, v2, v5

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    .line 266
    invoke-direct {p0, p1, p2, v0, v11}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/a;->a(Landroid/app/Activity;Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;Z)Landroid/view/View;

    move-result-object v0

    .line 268
    if-nez v0, :cond_b

    .line 269
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "List:item == null"

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    iget-object v0, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->contentType:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->c(Ljava/lang/String;)V

    .line 265
    :goto_5
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_4

    .line 272
    :cond_b
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 274
    iget v9, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/a;->a:I

    const/high16 v10, 0x3f800000    # 1.0f

    .line 272
    invoke-direct {v8, v1, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 275
    instance-of v9, v0, Landroid/widget/ImageView;

    if-eqz v9, :cond_c

    iget v9, p2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->height:I

    if-gtz v9, :cond_c

    .line 276
    iput v12, v8, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 278
    :cond_c
    if-ne v11, v5, :cond_d

    .line 280
    new-instance v9, Landroid/view/View;

    invoke-direct {v9, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 281
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 282
    invoke-direct {v10, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 281
    invoke-virtual {v9, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 283
    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 285
    :cond_d
    invoke-virtual {v7, v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5
.end method

.method final b(Landroid/app/Activity;Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 323
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 324
    iget-object v1, p2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceObjectList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 325
    iget-object v1, p2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceObjectList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 375
    :cond_0
    :goto_0
    return-object v0

    .line 328
    :cond_1
    iget-object v1, p2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceObjectList:Ljava/util/List;

    .line 329
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 330
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getAnnouncementItem failed,spaceInfo:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 334
    :cond_3
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    .line 335
    new-instance v3, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;

    invoke-direct {v3, p1}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;-><init>(Landroid/content/Context;)V

    .line 336
    iget-object v1, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->content:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->setAnnouncement(Ljava/lang/String;)V

    .line 337
    invoke-direct {p0, v0}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/a;->a(Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;)I

    move-result v1

    iget v2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/a;->b:I

    invoke-virtual {v3, v1, v2, v4}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->setAnnouncementType(III)V

    .line 338
    iget-object v1, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->textColor:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 339
    iget-object v1, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->textColor:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->setTextColor(I)V

    .line 341
    :cond_4
    iget-object v1, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->widgetColor:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 342
    iget-object v1, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->widgetColor:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->setBtnColor(I)V

    .line 344
    :cond_5
    const-string/jumbo v1, "#fff391"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 345
    const-string/jumbo v2, "#ede17d"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    .line 346
    iget-object v4, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->bgColor:Ljava/lang/String;

    invoke-static {v4}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 347
    iget-object v1, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->bgColor:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 349
    :cond_6
    iget-object v4, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->fgColor:Ljava/lang/String;

    invoke-static {v4}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 350
    iget-object v2, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->fgColor:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    .line 352
    :cond_7
    invoke-virtual {v3, v1, v2}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->setBackgroundColor(II)V

    .line 353
    new-instance v1, Lcom/alipay/android/phone/businesscommon/advertisement/impl/c;

    invoke-direct {v1, p0, v0, p2}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/c;-><init>(Lcom/alipay/android/phone/businesscommon/advertisement/impl/a;Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)V

    invoke-virtual {v3, v1}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAnnouncementView;->setCallBack(Lcom/alipay/android/phone/businesscommon/advertisement/ui/f;)V

    move-object v0, v3

    .line 375
    goto/16 :goto_0
.end method

.method final c(Landroid/app/Activity;Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 461
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 462
    iget-object v0, p2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceObjectList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceObjectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v3

    .line 490
    :goto_0
    return-object v0

    .line 466
    :cond_1
    iget-object v4, p2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceObjectList:Ljava/util/List;

    .line 467
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 468
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "getAnnouncementItem failed,spaceInfo:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->c(Ljava/lang/String;)V

    move-object v0, v3

    .line 469
    goto :goto_0

    .line 472
    :cond_3
    const-string/jumbo v0, "FULL"

    iget-object v2, p2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->location:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    move-object v2, p0

    .line 475
    :goto_1
    iput v0, v2, Lcom/alipay/android/phone/businesscommon/advertisement/impl/a;->a:I

    .line 479
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    .line 480
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 481
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 482
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 483
    sget v5, Lcom/alipay/mobile/ui/R$color;->colorccc:I

    .line 482
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 484
    invoke-direct {p0, p1, p2, v0, v7}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/a;->a(Landroid/app/Activity;Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;Z)Landroid/view/View;

    move-result-object v0

    .line 485
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 486
    iget v5, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/a;->a:I

    .line 485
    invoke-direct {v4, v1, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 487
    if-nez v0, :cond_6

    move-object v0, v3

    .line 488
    goto :goto_0

    .line 475
    :cond_4
    iget v0, p2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->height:I

    if-gtz v0, :cond_5

    iget v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/a;->a:I

    move-object v2, p0

    goto :goto_1

    .line 476
    :cond_5
    iget v0, p2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->height:I

    int-to-double v5, v0

    .line 475
    invoke-static {p1, v5, v6}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/a;->a(Landroid/content/Context;D)I

    move-result v0

    move-object v2, p0

    goto :goto_1

    .line 489
    :cond_6
    invoke-virtual {v2, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, v2

    .line 490
    goto :goto_0
.end method

.method final d(Landroid/app/Activity;Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)Landroid/view/View;
    .locals 6

    .prologue
    .line 495
    new-instance v5, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;

    invoke-direct {v5, p1}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;-><init>(Landroid/content/Context;)V

    .line 496
    iget-object v0, p2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceCode:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;->setTag(Ljava/lang/Object;)V

    .line 497
    if-eqz p2, :cond_4

    iget-object v0, p2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceObjectList:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 498
    iget-object v0, p2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceObjectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 499
    iget-object v0, p2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceObjectList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    .line 500
    iget-object v0, v2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->content:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;->setContent(Ljava/lang/String;)V

    .line 501
    const-string/jumbo v0, "#801b1b11"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 502
    const-string/jumbo v1, "#801b1b11"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 503
    iget-object v3, v2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->bgColor:Ljava/lang/String;

    invoke-static {v3}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 504
    iget-object v0, v2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->bgColor:Ljava/lang/String;

    const-string/jumbo v3, "#"

    const-string/jumbo v4, "#80"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 506
    :cond_0
    iget-object v3, v2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->fgColor:Ljava/lang/String;

    invoke-static {v3}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 508
    iget-object v1, v2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->fgColor:Ljava/lang/String;

    const-string/jumbo v3, "#"

    const-string/jumbo v4, "#80"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 510
    :cond_1
    iget-object v3, v2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->widgetColor:Ljava/lang/String;

    invoke-static {v3}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 511
    iget-object v3, v2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->widgetColor:Ljava/lang/String;

    invoke-virtual {v5, v3}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;->setRightIconColor(Ljava/lang/String;)V

    .line 513
    :cond_2
    invoke-virtual {v5, v0, v1}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;->setBackgroundColor(II)V

    .line 514
    iget-object v0, v2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->textColor:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 515
    iget-object v0, v2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->textColor:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;->setContentColor(Ljava/lang/String;)V

    .line 517
    :cond_3
    invoke-direct {p0, v2}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/a;->a(Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;)I

    move-result v0

    iget v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/a;->b:I

    invoke-virtual {v5, v0, v1}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;->setType(II)V

    .line 518
    new-instance v0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/e;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/e;-><init>(Lcom/alipay/android/phone/businesscommon/advertisement/impl/a;Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;Landroid/app/Activity;Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;)V

    invoke-virtual {v5, v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;->setCallBack(Lcom/alipay/android/phone/businesscommon/advertisement/ui/f;)V

    .line 551
    :cond_4
    return-object v5
.end method

.method final e(Landroid/app/Activity;Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)Landroid/view/View;
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 586
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 587
    iget-object v0, p2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceObjectList:Ljava/util/List;

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v2

    .line 632
    :goto_0
    return-object v0

    .line 590
    :cond_1
    iget v0, p2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->height:I

    if-gtz v0, :cond_3

    iget v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/a;->a:I

    :goto_1
    iput v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/a;->a:I

    .line 592
    iget-object v0, p2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceObjectList:Ljava/util/List;

    .line 593
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    move-object v0, v2

    .line 594
    goto :goto_0

    .line 591
    :cond_3
    iget v0, p2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->height:I

    int-to-double v3, v0

    .line 590
    invoke-static {p1, v3, v4}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/a;->a(Landroid/content/Context;D)I

    move-result v0

    goto :goto_1

    .line 596
    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 599
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v1

    move v3, v1

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 613
    new-instance v1, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;

    invoke-direct {v1, p1}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;-><init>(Landroid/content/Context;)V

    .line 614
    invoke-virtual {v1, v4}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;->setAdverts(Ljava/util/List;)V

    .line 615
    new-instance v0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/g;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/g;-><init>(Lcom/alipay/android/phone/businesscommon/advertisement/impl/a;)V

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;->setBannerClickListener(Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/b;)V

    .line 627
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 628
    const/4 v0, -0x1

    .line 627
    invoke-direct {v3, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 629
    invoke-virtual {v1, v3}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 630
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 631
    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 599
    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    .line 600
    new-instance v6, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/c;

    invoke-direct {v6}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/c;-><init>()V

    .line 602
    iget-object v7, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->objectId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/c;->a(Ljava/lang/String;)V

    .line 603
    iget-object v7, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->actionUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/c;->b(Ljava/lang/String;)V

    .line 604
    iget-object v7, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->hrefUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/c;->c(Ljava/lang/String;)V

    .line 605
    if-nez v3, :cond_a

    .line 607
    iget-object v2, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->hrefUrl:Ljava/lang/String;

    iget v7, p2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->height:I

    const-class v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/b;->c(Ljava/lang/Class;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    new-instance v8, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageClearCacheQuery;

    invoke-direct {v8, v2}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageClearCacheQuery;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_6

    if-nez v0, :cond_7

    :cond_6
    const-string/jumbo v0, "AdContent.getPhotoHeight:activity==null ||service == null || query == null"

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->c(Ljava/lang/String;)V

    move v0, v1

    .line 610
    :goto_3
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v6, v3}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/c;->a(I)V

    .line 611
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v2

    move v2, v0

    goto :goto_2

    .line 607
    :cond_7
    invoke-virtual {v0, v8}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->queryImageFor(Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageQuery;)Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageQueryResult;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v8, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v9, v0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageQueryResult;->path:Ljava/lang/String;

    invoke-static {v9}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    if-ltz v7, :cond_8

    int-to-float v0, v8

    const/high16 v2, 0x3ec00000    # 0.375f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_3

    :cond_8
    mul-int v0, v8, v7

    div-int/lit16 v0, v0, 0x140

    goto :goto_3

    :cond_9
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget-object v0, v0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageQueryResult;->path:Ljava/lang/String;

    invoke-static {v0, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v0, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/2addr v0, v2

    iget v2, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v0, v2

    goto :goto_3

    :cond_a
    move v0, v2

    goto :goto_3
.end method
