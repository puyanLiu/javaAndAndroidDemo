.class public Lcom/alipay/mobile/socialsdk/contact/processer/PinyinSearchServiceImpl;
.super Lcom/alipay/mobile/personalbase/service/PinyinSearchService;
.source "PinyinSearchServiceImpl.java"


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput v0, Lcom/alipay/mobile/socialsdk/contact/processer/PinyinSearchServiceImpl;->a:I

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/alipay/mobile/personalbase/service/PinyinSearchService;-><init>()V

    return-void
.end method


# virtual methods
.method public getPinyinStringArray(C)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Lcom/alipay/mobile/personalbase/search/ChineseToPinyinResource;->getInstance()Lcom/alipay/mobile/personalbase/search/ChineseToPinyinResource;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/personalbase/search/ChineseToPinyinResource;->getHanyuPinyinStringArray(C)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadPinyinLib()V
    .locals 1

    .prologue
    .line 17
    sget v0, Lcom/alipay/mobile/socialsdk/contact/processer/PinyinSearchServiceImpl;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/alipay/mobile/socialsdk/contact/processer/PinyinSearchServiceImpl;->a:I

    .line 18
    invoke-static {}, Lcom/alipay/mobile/personalbase/search/ChineseToPinyinResource;->getInstance()Lcom/alipay/mobile/personalbase/search/ChineseToPinyinResource;

    .line 19
    return-void
.end method

.method public releasePinyinLib()V
    .locals 1

    .prologue
    .line 23
    sget v0, Lcom/alipay/mobile/socialsdk/contact/processer/PinyinSearchServiceImpl;->a:I

    add-int/lit8 v0, v0, -0x1

    .line 24
    sput v0, Lcom/alipay/mobile/socialsdk/contact/processer/PinyinSearchServiceImpl;->a:I

    if-eqz v0, :cond_0

    .line 28
    :goto_0
    return-void

    .line 27
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/personalbase/search/ChineseToPinyinResource;->clearInstance()V

    goto :goto_0
.end method
