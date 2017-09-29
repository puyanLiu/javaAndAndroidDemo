.class public interface abstract Lcom/alipay/mobile/nebulacore/api/H5ContentProvider;
.super Ljava/lang/Object;
.source "H5ContentProvider.java"


# static fields
.field public static final H5_BRIDGE:Ljava/lang/String; = "https://a.alipayobjects.com/bridgeapi/1.0/jsready.js"

.field public static final PAGE_ERROR:Ljava/lang/String; = "https://alipay.com/h5container/h5_page_error.html"

.field public static final REDIRECT_LINK:Ljava/lang/String; = "https://alipay.com/h5container/redirect_link.html"

.field public static final SECURITY_LINK:Ljava/lang/String; = "https://alipay.com/h5container/security_link.html"

.field public static final UN_SAFE:Ljava/lang/String; = "https://alipay.com/h5container/un_safe.html"

.field public static final WHITE_LINK:Ljava/lang/String; = "https://alipay.com/h5container/white_link.html"


# virtual methods
.method public abstract getContent(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
.end method

.method public abstract mapContent(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract releaseContent()V
.end method
