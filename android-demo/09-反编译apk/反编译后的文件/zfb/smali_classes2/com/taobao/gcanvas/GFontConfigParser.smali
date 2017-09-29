.class public Lcom/taobao/gcanvas/GFontConfigParser;
.super Ljava/lang/Object;
.source "GFontConfigParser.java"


# static fields
.field private static final FALLBACK_FONT:Ljava/lang/String; = "DroidSansFallback.ttf"

.field private static final SYSTEM_FONTS_FILE:Ljava/lang/String; = "/system/etc/system_fonts.xml"

.field private static final SYSTEM_FONT_LOCATION:Ljava/lang/String; = "/system/fonts/"


# instance fields
.field private mFontFamilies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mIsInitialized:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/gcanvas/GFontConfigParser;->mIsInitialized:Z

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/gcanvas/GFontConfigParser;->mFontFamilies:Ljava/util/HashMap;

    .line 30
    iget-boolean v0, p0, Lcom/taobao/gcanvas/GFontConfigParser;->mIsInitialized:Z

    if-nez v0, :cond_0

    .line 31
    invoke-direct {p0}, Lcom/taobao/gcanvas/GFontConfigParser;->readConfigFile()V

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/gcanvas/GFontConfigParser;->mIsInitialized:Z

    .line 34
    :cond_0
    return-void
.end method

.method private parseXML(Lorg/w3c/dom/Document;)V
    .locals 13

    .prologue
    .line 61
    iget-object v0, p0, Lcom/taobao/gcanvas/GFontConfigParser;->mFontFamilies:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/gcanvas/GFontConfigParser;->mFontFamilies:Ljava/util/HashMap;

    .line 68
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    .line 69
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "familyset"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 70
    const-string/jumbo v0, "GCanvas - GFontConfigParser"

    const-string/jumbo v1, "Cannot find familyset."

    invoke-static {v0, v1}, Lcom/taobao/gcanvas/GLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_0
    :goto_1
    return-void

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/taobao/gcanvas/GFontConfigParser;->mFontFamilies:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_0

    .line 74
    :cond_2
    const-string/jumbo v1, "family"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 75
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    .line 76
    const/4 v0, 0x0

    move v3, v0

    :goto_2
    if-ge v3, v5, :cond_0

    .line 77
    invoke-interface {v4, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 80
    const/4 v2, 0x0

    .line 81
    const/4 v1, 0x0

    .line 83
    instance-of v6, v0, Lorg/w3c/dom/Element;

    if-eqz v6, :cond_d

    .line 84
    check-cast v0, Lorg/w3c/dom/Element;

    .line 85
    const-string/jumbo v1, "nameset"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 86
    const-string/jumbo v2, "fileset"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 88
    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_3

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v6, 0x1

    if-eq v2, v6, :cond_4

    .line 92
    :cond_3
    const-string/jumbo v0, "GCanvas - GFontConfigParser"

    const-string/jumbo v1, "nameset or fileset node doesn\'t exist."

    invoke-static {v0, v1}, Lcom/taobao/gcanvas/GLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 96
    :cond_4
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 97
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 100
    :goto_3
    if-eqz v1, :cond_5

    if-nez v0, :cond_6

    .line 101
    :cond_5
    const-string/jumbo v0, "GCanvas - GFontConfigParser"

    const-string/jumbo v1, "nameset or fileset is invalid."

    invoke-static {v0, v1}, Lcom/taobao/gcanvas/GLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 106
    :cond_6
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 107
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 109
    if-eqz v2, :cond_7

    if-nez v6, :cond_8

    .line 110
    :cond_7
    const-string/jumbo v0, "GCanvas - GFontConfigParser"

    const-string/jumbo v1, "nameset or fileset is empty."

    invoke-static {v0, v1}, Lcom/taobao/gcanvas/GLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 115
    :cond_8
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    .line 116
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    .line 117
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 118
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 120
    const/4 v0, 0x0

    move v1, v0

    :goto_4
    if-ge v1, v8, :cond_a

    .line 121
    invoke-interface {v6, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 122
    instance-of v11, v0, Lorg/w3c/dom/Element;

    if-eqz v11, :cond_9

    .line 123
    check-cast v0, Lorg/w3c/dom/Element;

    .line 124
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "file"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 125
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_9
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 131
    :cond_a
    const/4 v0, 0x0

    move v1, v0

    :goto_5
    if-ge v1, v7, :cond_c

    .line 132
    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 133
    instance-of v6, v0, Lorg/w3c/dom/Element;

    if-eqz v6, :cond_b

    .line 134
    check-cast v0, Lorg/w3c/dom/Element;

    .line 135
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "name"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 136
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 143
    :cond_c
    iget-object v0, p0, Lcom/taobao/gcanvas/GFontConfigParser;->mFontFamilies:Ljava/util/HashMap;

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_2

    :cond_d
    move-object v0, v1

    move-object v1, v2

    goto/16 :goto_3
.end method

.method private readConfigFile()V
    .locals 3

    .prologue
    .line 50
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 53
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "/system/etc/system_fonts.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 54
    invoke-direct {p0, v0}, Lcom/taobao/gcanvas/GFontConfigParser;->parseXML(Lorg/w3c/dom/Document;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getFallbackFont()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string/jumbo v0, "DroidSansFallback.ttf"

    return-object v0
.end method

.method public getFontFamilies()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/taobao/gcanvas/GFontConfigParser;->mFontFamilies:Ljava/util/HashMap;

    return-object v0
.end method

.method public getSystemFontLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    const-string/jumbo v0, "/system/fonts/"

    return-object v0
.end method
