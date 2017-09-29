.class public final Lcom/alipay/android/phone/businesscommon/advertisement/c/a;
.super Ljava/lang/Object;
.source "AdMisc.java"


# static fields
.field private static a:I

.field private static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 394
    sput v0, Lcom/alipay/android/phone/businesscommon/advertisement/c/a;->a:I

    .line 395
    sput v0, Lcom/alipay/android/phone/businesscommon/advertisement/c/a;->b:I

    .line 44
    return-void
.end method

.method public static a(Landroid/app/Activity;)I
    .locals 4

    .prologue
    .line 417
    const/4 v0, 0x0

    sput v0, Lcom/alipay/android/phone/businesscommon/advertisement/c/a;->a:I

    .line 419
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 418
    check-cast v0, Landroid/view/ViewGroup;

    .line 420
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 421
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 422
    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 423
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    sput v2, Lcom/alipay/android/phone/businesscommon/advertisement/c/a;->b:I

    .line 424
    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/c/a;->b(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 425
    sget v2, Lcom/alipay/android/phone/businesscommon/advertisement/c/a;->a:I

    if-nez v2, :cond_0

    .line 426
    sget v2, Lcom/alipay/android/phone/businesscommon/advertisement/c/a;->b:I

    sput v2, Lcom/alipay/android/phone/businesscommon/advertisement/c/a;->a:I

    .line 428
    :cond_0
    sget v2, Lcom/alipay/android/phone/businesscommon/advertisement/c/a;->a:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    .line 429
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " bottom :"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v3, Lcom/alipay/android/phone/businesscommon/advertisement/c/a;->a:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " location[1]:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v3, Lcom/alipay/android/phone/businesscommon/advertisement/c/a;->a:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 430
    const-string/jumbo v3, " outRect.top"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 429
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->c(Ljava/lang/String;)V

    .line 431
    return v2
.end method

.method private static a(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 405
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->c(Ljava/lang/String;)V

    .line 406
    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 407
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "bottom:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " screenBottom:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/businesscommon/advertisement/c/a;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->e(Ljava/lang/String;)V

    .line 408
    sget v1, Lcom/alipay/android/phone/businesscommon/advertisement/c/a;->b:I

    if-ne v0, v1, :cond_0

    .line 410
    const/4 v0, 0x0

    .line 412
    :cond_0
    return v0
.end method

.method public static a(Ljava/lang/String;)I
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 134
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 135
    const-class v3, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    .line 136
    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;->getActionExecutor()Lcom/alipay/android/phone/businesscommon/advertisement/ActionExecutor;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 138
    invoke-virtual {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;->getActionExecutor()Lcom/alipay/android/phone/businesscommon/advertisement/ActionExecutor;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/alipay/android/phone/businesscommon/advertisement/ActionExecutor;->executeAction(Ljava/lang/String;)I

    move-result v0

    .line 163
    :goto_0
    return v0

    .line 140
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 141
    goto :goto_0

    .line 144
    :cond_1
    :try_start_0
    const-string/jumbo v0, "http"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 145
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 146
    const-string/jumbo v1, "showToolBar"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 147
    const-string/jumbo v1, "showTitleBar"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 148
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 150
    const-string/jumbo v3, ""

    const-string/jumbo v4, "20000067"

    invoke-interface {v1, v3, v4, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_1
    move v0, v2

    .line 163
    goto :goto_0

    .line 152
    :cond_2
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/c/a;->a(Landroid/net/Uri;)Landroid/os/Bundle;

    move-result-object v0

    .line 153
    const-string/jumbo v3, "appId"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 154
    invoke-static {v3}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v0, v1

    .line 155
    goto :goto_0

    .line 157
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 158
    const-string/jumbo v4, ""

    invoke-interface {v1, v4, v3, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 160
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->b(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private static a(Landroid/net/Uri;)Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 167
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 168
    invoke-static {p0}, Lcom/alipay/android/phone/businesscommon/advertisement/c/a;->b(Landroid/net/Uri;)Ljava/util/Set;

    move-result-object v0

    .line 170
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    return-object v1

    .line 170
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 171
    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 172
    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;
    .locals 3

    .prologue
    .line 83
    if-nez p0, :cond_0

    .line 84
    const/4 v0, 0x0

    .line 105
    :goto_0
    return-object v0

    .line 86
    :cond_0
    new-instance v0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;

    invoke-direct {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;-><init>()V

    .line 87
    iget-object v1, p0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->appId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->appId:Ljava/lang/String;

    .line 88
    iget v1, p0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->rotationTime:I

    iput v1, v0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->rotationTime:I

    .line 89
    iget-wide v1, p0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->reqRpcTime:J

    iput-wide v1, v0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->reqRpcTime:J

    .line 90
    iget v1, p0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->height:I

    iput v1, v0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->height:I

    .line 91
    iget-object v1, p0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->location:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->location:Ljava/lang/String;

    .line 92
    iget-object v1, p0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceCode:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->spaceCode:Ljava/lang/String;

    .line 93
    iget-wide v1, p0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->modifyTime:J

    iput-wide v1, v0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->modifyTime:J

    .line 94
    iget v1, p0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->displayMaxCount:I

    iput v1, v0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->displayMaxCount:I

    .line 97
    :try_start_0
    iget-object v1, p0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceObjectList:Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 96
    iput-object v1, v0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->spaceObjectList:Ljava/lang/String;
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_1
    iget-object v1, p0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->type:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->type:Ljava/lang/String;

    .line 102
    iget-object v1, p0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->updatePolicy:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->updatePolicy:Ljava/lang/String;

    .line 103
    iget-object v1, p0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->androidViewId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->viewId:Ljava/lang/String;

    .line 104
    iget-object v1, p0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->multiStyle:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->multiStyle:Ljava/lang/String;

    goto :goto_0

    .line 98
    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static a(Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;)Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;
    .locals 3

    .prologue
    .line 54
    if-nez p0, :cond_0

    .line 55
    const/4 v0, 0x0

    .line 77
    :goto_0
    return-object v0

    .line 57
    :cond_0
    new-instance v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    invoke-direct {v0}, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;-><init>()V

    .line 58
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->appId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->appId:Ljava/lang/String;

    .line 59
    iget-wide v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->reqRpcTime:J

    iput-wide v1, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->reqRpcTime:J

    .line 60
    iget v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->rotationTime:I

    iput v1, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->rotationTime:I

    .line 61
    iget v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->height:I

    iput v1, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->height:I

    .line 62
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->location:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->location:Ljava/lang/String;

    .line 63
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->spaceCode:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceCode:Ljava/lang/String;

    .line 64
    iget-wide v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->modifyTime:J

    iput-wide v1, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->modifyTime:J

    .line 65
    iget v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->displayMaxCount:I

    iput v1, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->displayMaxCount:I

    .line 68
    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->spaceObjectList:Ljava/lang/String;

    const-class v2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    .line 67
    invoke-static {v1, v2}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceObjectList:Ljava/util/List;
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_1
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->type:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->type:Ljava/lang/String;

    .line 73
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->updatePolicy:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->updatePolicy:Ljava/lang/String;

    .line 74
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->viewId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->androidViewId:Ljava/lang/String;

    .line 75
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->multiStyle:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->multiStyle:Ljava/lang/String;

    goto :goto_0

    .line 69
    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/16 v11, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 249
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    :cond_0
    const/4 v0, 0x0

    .line 315
    :goto_0
    return-object v0

    .line 252
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 254
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v5

    .line 315
    goto :goto_0

    .line 254
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    .line 255
    iget-object v0, v1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->behaviors:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->behaviors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 259
    :cond_4
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 262
    :cond_5
    iget-wide v7, v1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->gmtStart:J

    cmp-long v0, v7, v11

    if-eqz v0, :cond_7

    iget-wide v7, v1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->gmtEnd:J

    cmp-long v0, v7, v11

    if-eqz v0, :cond_7

    .line 264
    iget-wide v7, v1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->gmtStart:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    cmp-long v0, v7, v9

    if-gtz v0, :cond_6

    .line 265
    iget-wide v7, v1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->gmtEnd:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    cmp-long v0, v7, v9

    if-gez v0, :cond_7

    .line 266
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ad not in valide time! soi.gmtStart is"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 267
    iget-wide v7, v1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->gmtStart:J

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " soi.gmtEnd is"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, v1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->gmtEnd:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 266
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 272
    :cond_7
    iget-object v0, v1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->behaviors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v2, v3

    :cond_8
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_9

    .line 311
    :goto_3
    if-eqz v2, :cond_2

    .line 312
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 272
    :cond_9
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectBehavior;

    .line 273
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "AdMisc.getSOIWinner:objectId:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->objectId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 274
    const-string/jumbo v9, " showTimes:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectBehavior;->showTimes:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " hadShowTimes:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 275
    iget v9, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectBehavior;->hadShowedTimes:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 273
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->c(Ljava/lang/String;)V

    .line 276
    const-string/jumbo v8, "ALWAYS"

    iget-object v9, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectBehavior;->behavior:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    move v2, v3

    .line 278
    goto :goto_3

    .line 279
    :cond_a
    const-string/jumbo v8, "CLOSE_AFTER_MOMENT"

    .line 280
    iget-object v9, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectBehavior;->behavior:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 281
    const-string/jumbo v8, "CLOSE_AFTER_CLICK"

    .line 283
    iget-object v9, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectBehavior;->behavior:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 284
    const-string/jumbo v8, "CLOSE_AFTER_TIMES"

    .line 285
    iget-object v9, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectBehavior;->behavior:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 286
    :cond_b
    iget v8, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectBehavior;->showTimes:I

    iget v0, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectBehavior;->hadShowedTimes:I

    if-gt v8, v0, :cond_8

    move v2, v4

    .line 287
    goto :goto_2

    .line 289
    :cond_c
    const-string/jumbo v8, "CLOSE_AFTER_JUMP"

    .line 290
    iget-object v9, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectBehavior;->behavior:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 291
    iget-boolean v0, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectBehavior;->jumpedByUser:Z

    if-eqz v0, :cond_8

    move v2, v4

    .line 292
    goto/16 :goto_2

    .line 294
    :cond_d
    const-string/jumbo v8, "CLOSE_AFTER_SHUT"

    .line 295
    iget-object v9, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectBehavior;->behavior:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 296
    iget-boolean v0, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectBehavior;->closedByUser:Z

    if-eqz v0, :cond_8

    move v2, v4

    .line 297
    goto/16 :goto_2

    .line 299
    :cond_e
    const-string/jumbo v8, "CLOSE_EVERYDAY_CLICK"

    .line 300
    iget-object v9, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectBehavior;->behavior:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_f

    .line 301
    const-string/jumbo v8, "CLOSE_EVERYDAY_TIMES"

    .line 302
    iget-object v9, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectBehavior;->behavior:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 303
    :cond_f
    iget v8, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectBehavior;->showTimes:I

    iget v9, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectBehavior;->hadShowedTimes:I

    if-gt v8, v9, :cond_8

    .line 304
    iget-wide v8, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectBehavior;->behaviorUpdateTime:J

    invoke-static {v8, v9}, Lcom/alipay/android/phone/businesscommon/advertisement/c/a;->a(J)Z

    move-result v0

    if-eqz v0, :cond_8

    move v2, v4

    .line 305
    goto/16 :goto_2

    .line 308
    :cond_10
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "sob.behavior not illeagle:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectBehavior;->behavior:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->e(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 467
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v0, "com.eg.android.AlipayGphone.action.CDP_CLICK_NOTIFY_VIEW_ACTION"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 468
    const-string/jumbo v0, "spaceCode"

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 469
    const-string/jumbo v0, "adId"

    invoke-virtual {v2, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 470
    if-eqz p3, :cond_0

    .line 471
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 475
    :cond_0
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onClickNotifyBroadcast :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->c(Ljava/lang/String;)V

    .line 477
    return-void

    .line 471
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 472
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static a(Landroid/view/View;FF)V
    .locals 4

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 213
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 214
    invoke-virtual {p0, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 215
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, v1, p1

    if-gez v1, :cond_0

    .line 216
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p1, v1

    div-float/2addr v1, v3

    float-to-int v1, v1

    .line 217
    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 218
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 220
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, v1, p2

    if-gez v1, :cond_1

    .line 221
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p2, v1

    div-float/2addr v1, v3

    float-to-int v1, v1

    .line 222
    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 223
    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 225
    :cond_1
    new-instance v1, Landroid/view/TouchDelegate;

    invoke-direct {v1, v0, p0}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 226
    const-class v0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 227
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 229
    :cond_2
    return-void
.end method

.method public static a(Z)V
    .locals 3

    .prologue
    .line 332
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 333
    const-string/jumbo v1, "com.alipay.android.phone.businesscommon"

    .line 331
    invoke-static {v0, v1}, Lcom/alipay/android/phone/mobilesdk/storage/sp/SharedPreferencesManager;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    move-result-object v1

    .line 334
    const-string/jumbo v0, "AdInitialed"

    invoke-virtual {v1, v0, p0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->putBoolean(Ljava/lang/String;Z)Z

    .line 336
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 337
    const-class v2, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    .line 338
    if-eqz v0, :cond_0

    .line 339
    const-string/jumbo v2, "AdLastLoginUser"

    invoke-virtual {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;->getUseId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 341
    :cond_0
    invoke-virtual {v1}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->commit()Z

    .line 342
    return-void
.end method

.method public static a()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 346
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 347
    const-string/jumbo v1, "com.alipay.android.phone.businesscommon"

    .line 345
    invoke-static {v0, v1}, Lcom/alipay/android/phone/mobilesdk/storage/sp/SharedPreferencesManager;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    move-result-object v3

    .line 348
    const-string/jumbo v0, "AdLastLoginUser"

    const-string/jumbo v1, ""

    invoke-virtual {v3, v0, v1}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 349
    const/4 v1, 0x0

    .line 351
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 352
    const-class v5, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    .line 353
    if-eqz v0, :cond_1

    .line 354
    invoke-virtual {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;->getUseId()Ljava/lang/String;

    move-result-object v0

    .line 356
    :goto_0
    const-string/jumbo v1, "AdInitialed"

    invoke-virtual {v3, v1, v2}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 357
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 358
    const/4 v0, 0x1

    .line 360
    :goto_1
    return v0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static a(J)Z
    .locals 4

    .prologue
    .line 319
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd"

    .line 320
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 319
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 321
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 322
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 323
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    const/4 v0, 0x1

    .line 326
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()J
    .locals 4

    .prologue
    .line 374
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 375
    const-string/jumbo v1, "com.alipay.android.phone.businesscommon"

    .line 373
    invoke-static {v0, v1}, Lcom/alipay/android/phone/mobilesdk/storage/sp/SharedPreferencesManager;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    move-result-object v0

    .line 376
    const-string/jumbo v1, "AdGlobalOpLogId"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static b(Landroid/view/View;)Landroid/view/View;
    .locals 3

    .prologue
    .line 435
    move-object v1, p0

    :goto_0
    instance-of v0, v1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    move-object v0, v1

    .line 436
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 437
    if-nez v0, :cond_0

    .line 438
    sget v0, Lcom/alipay/android/phone/businesscommon/advertisement/c/a;->a:I

    invoke-static {v1}, Lcom/alipay/android/phone/businesscommon/advertisement/c/a;->a(Landroid/view/View;)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/alipay/android/phone/businesscommon/advertisement/c/a;->a:I

    .line 459
    :goto_1
    return-object v1

    .line 441
    :cond_0
    const/4 p0, 0x0

    .line 442
    add-int/lit8 v0, v0, -0x1

    move v2, v0

    .line 446
    :goto_2
    if-gez v2, :cond_2

    .line 449
    :cond_1
    const/4 v0, -0x1

    if-ne v0, v2, :cond_3

    .line 450
    sget v0, Lcom/alipay/android/phone/businesscommon/advertisement/c/a;->a:I

    invoke-static {v1}, Lcom/alipay/android/phone/businesscommon/advertisement/c/a;->a(Landroid/view/View;)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/alipay/android/phone/businesscommon/advertisement/c/a;->a:I

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 444
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 445
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez v0, :cond_1

    .line 446
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_2

    .line 453
    :cond_3
    sget v0, Lcom/alipay/android/phone/businesscommon/advertisement/c/a;->a:I

    invoke-static {p0}, Lcom/alipay/android/phone/businesscommon/advertisement/c/a;->a(Landroid/view/View;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/alipay/android/phone/businesscommon/advertisement/c/a;->a:I

    move-object v1, p0

    .line 454
    goto :goto_0

    .line 458
    :cond_4
    sget v0, Lcom/alipay/android/phone/businesscommon/advertisement/c/a;->a:I

    invoke-static {v1}, Lcom/alipay/android/phone/businesscommon/advertisement/c/a;->a(Landroid/view/View;)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/alipay/android/phone/businesscommon/advertisement/c/a;->a:I

    goto :goto_1
.end method

.method public static b(Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;
    .locals 3

    .prologue
    .line 232
    if-nez p0, :cond_1

    .line 238
    :cond_0
    return-object p0

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceObjectList:Ljava/util/List;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/c/a;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceObjectList:Ljava/util/List;

    .line 237
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceObjectList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceObjectList:Ljava/util/List;

    new-instance v1, Lcom/alipay/android/phone/businesscommon/advertisement/c/b;

    invoke-direct {v1}, Lcom/alipay/android/phone/businesscommon/advertisement/c/b;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget v1, p0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->displayMaxCount:I

    if-lez v1, :cond_0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->displayMaxCount:I

    if-le v1, v2, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static b(Landroid/net/Uri;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 178
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v3

    .line 179
    if-nez v3, :cond_0

    .line 180
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 201
    :goto_0
    return-object v0

    .line 183
    :cond_0
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 184
    const/4 v0, 0x0

    .line 186
    :cond_1
    const/16 v1, 0x26

    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 187
    if-ne v1, v5, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 189
    :cond_2
    const/16 v2, 0x3d

    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 190
    if-gt v2, v1, :cond_3

    if-ne v2, v5, :cond_4

    :cond_3
    move v2, v1

    .line 194
    :cond_4
    invoke-virtual {v3, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 195
    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 198
    add-int/lit8 v0, v1, 0x1

    .line 199
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 201
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(J)V
    .locals 2

    .prologue
    .line 366
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 367
    const-string/jumbo v1, "com.alipay.android.phone.businesscommon"

    .line 365
    invoke-static {v0, v1}, Lcom/alipay/android/phone/mobilesdk/storage/sp/SharedPreferencesManager;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    move-result-object v0

    .line 368
    const-string/jumbo v1, "AdGlobalOpLogId"

    invoke-virtual {v0, v1, p0, p1}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->putLong(Ljava/lang/String;J)Z

    .line 369
    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->commit()Z

    .line 370
    return-void
.end method

.method public static c()J
    .locals 4

    .prologue
    .line 389
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 390
    const-string/jumbo v1, "com.alipay.android.phone.businesscommon"

    .line 388
    invoke-static {v0, v1}, Lcom/alipay/android/phone/mobilesdk/storage/sp/SharedPreferencesManager;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    move-result-object v0

    .line 391
    const-string/jumbo v1, "AdUserOpLogId"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static c(J)V
    .locals 2

    .prologue
    .line 381
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 382
    const-string/jumbo v1, "com.alipay.android.phone.businesscommon"

    .line 380
    invoke-static {v0, v1}, Lcom/alipay/android/phone/mobilesdk/storage/sp/SharedPreferencesManager;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    move-result-object v0

    .line 383
    const-string/jumbo v1, "AdUserOpLogId"

    invoke-virtual {v0, v1, p0, p1}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->putLong(Ljava/lang/String;J)Z

    .line 384
    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->commit()Z

    .line 385
    return-void
.end method
