.class public Lorg/ccil/cowan/tagsoup/Element;
.super Ljava/lang/Object;


# instance fields
.field private a:Lorg/ccil/cowan/tagsoup/ElementType;

.field private b:Lorg/ccil/cowan/tagsoup/AttributesImpl;

.field private c:Lorg/ccil/cowan/tagsoup/Element;

.field private d:Z


# direct methods
.method public constructor <init>(Lorg/ccil/cowan/tagsoup/ElementType;Z)V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/ccil/cowan/tagsoup/Element;->a:Lorg/ccil/cowan/tagsoup/ElementType;

    .line 42
    if-eqz p2, :cond_0

    .line 43
    new-instance v0, Lorg/ccil/cowan/tagsoup/AttributesImpl;

    invoke-virtual {p1}, Lorg/ccil/cowan/tagsoup/ElementType;->f()Lorg/ccil/cowan/tagsoup/AttributesImpl;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/ccil/cowan/tagsoup/AttributesImpl;-><init>(Lorg/xml/sax/Attributes;)V

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/Element;->b:Lorg/ccil/cowan/tagsoup/AttributesImpl;

    .line 46
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/Element;->c:Lorg/ccil/cowan/tagsoup/Element;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/ccil/cowan/tagsoup/Element;->d:Z

    .line 48
    return-void

    .line 45
    :cond_0
    new-instance v0, Lorg/ccil/cowan/tagsoup/AttributesImpl;

    invoke-direct {v0}, Lorg/ccil/cowan/tagsoup/AttributesImpl;-><init>()V

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/Element;->b:Lorg/ccil/cowan/tagsoup/AttributesImpl;

    goto :goto_0
.end method


# virtual methods
.method public final a()Lorg/ccil/cowan/tagsoup/AttributesImpl;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Element;->b:Lorg/ccil/cowan/tagsoup/AttributesImpl;

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 187
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Element;->a:Lorg/ccil/cowan/tagsoup/ElementType;

    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/Element;->b:Lorg/ccil/cowan/tagsoup/AttributesImpl;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Lorg/ccil/cowan/tagsoup/ElementType;->a(Lorg/ccil/cowan/tagsoup/AttributesImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method public final a(Lorg/ccil/cowan/tagsoup/Element;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lorg/ccil/cowan/tagsoup/Element;->c:Lorg/ccil/cowan/tagsoup/Element;

    .line 90
    return-void
.end method

.method public final b()Lorg/ccil/cowan/tagsoup/Element;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Element;->c:Lorg/ccil/cowan/tagsoup/Element;

    return-object v0
.end method

.method public final b(Lorg/ccil/cowan/tagsoup/Element;)Z
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Element;->a:Lorg/ccil/cowan/tagsoup/ElementType;

    iget-object v1, p1, Lorg/ccil/cowan/tagsoup/Element;->a:Lorg/ccil/cowan/tagsoup/ElementType;

    invoke-virtual {v0, v1}, Lorg/ccil/cowan/tagsoup/ElementType;->a(Lorg/ccil/cowan/tagsoup/ElementType;)Z

    move-result v0

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Element;->a:Lorg/ccil/cowan/tagsoup/ElementType;

    invoke-virtual {v0}, Lorg/ccil/cowan/tagsoup/ElementType;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Element;->a:Lorg/ccil/cowan/tagsoup/ElementType;

    invoke-virtual {v0}, Lorg/ccil/cowan/tagsoup/ElementType;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Element;->a:Lorg/ccil/cowan/tagsoup/ElementType;

    invoke-virtual {v0}, Lorg/ccil/cowan/tagsoup/ElementType;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Element;->a:Lorg/ccil/cowan/tagsoup/ElementType;

    invoke-virtual {v0}, Lorg/ccil/cowan/tagsoup/ElementType;->d()I

    move-result v0

    return v0
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Element;->a:Lorg/ccil/cowan/tagsoup/ElementType;

    invoke-virtual {v0}, Lorg/ccil/cowan/tagsoup/ElementType;->e()I

    move-result v0

    return v0
.end method

.method public final h()Lorg/ccil/cowan/tagsoup/ElementType;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Element;->a:Lorg/ccil/cowan/tagsoup/ElementType;

    invoke-virtual {v0}, Lorg/ccil/cowan/tagsoup/ElementType;->g()Lorg/ccil/cowan/tagsoup/ElementType;

    move-result-object v0

    return-object v0
.end method

.method public final i()V
    .locals 3

    .prologue
    .line 196
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Element;->b:Lorg/ccil/cowan/tagsoup/AttributesImpl;

    invoke-virtual {v0}, Lorg/ccil/cowan/tagsoup/AttributesImpl;->getLength()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 197
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/Element;->b:Lorg/ccil/cowan/tagsoup/AttributesImpl;

    invoke-virtual {v1, v0}, Lorg/ccil/cowan/tagsoup/AttributesImpl;->getType(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ID"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/Element;->b:Lorg/ccil/cowan/tagsoup/AttributesImpl;

    invoke-virtual {v1, v0}, Lorg/ccil/cowan/tagsoup/AttributesImpl;->getQName(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "name"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 199
    :cond_0
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/Element;->b:Lorg/ccil/cowan/tagsoup/AttributesImpl;

    invoke-virtual {v1, v0}, Lorg/ccil/cowan/tagsoup/AttributesImpl;->a(I)V

    .line 196
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 202
    :cond_2
    return-void
.end method

.method public final j()V
    .locals 3

    .prologue
    .line 211
    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Element;->b:Lorg/ccil/cowan/tagsoup/AttributesImpl;

    invoke-virtual {v0}, Lorg/ccil/cowan/tagsoup/AttributesImpl;->getLength()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 212
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/Element;->b:Lorg/ccil/cowan/tagsoup/AttributesImpl;

    invoke-virtual {v1, v0}, Lorg/ccil/cowan/tagsoup/AttributesImpl;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    .line 213
    iget-object v2, p0, Lorg/ccil/cowan/tagsoup/Element;->b:Lorg/ccil/cowan/tagsoup/AttributesImpl;

    invoke-virtual {v2, v0}, Lorg/ccil/cowan/tagsoup/AttributesImpl;->getValue(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 215
    :cond_0
    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/Element;->b:Lorg/ccil/cowan/tagsoup/AttributesImpl;

    invoke-virtual {v1, v0}, Lorg/ccil/cowan/tagsoup/AttributesImpl;->a(I)V

    .line 216
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 219
    :cond_2
    return-void
.end method

.method public final k()V
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/ccil/cowan/tagsoup/Element;->d:Z

    .line 228
    return-void
.end method

.method public final l()Z
    .locals 1

    .prologue
    .line 235
    iget-boolean v0, p0, Lorg/ccil/cowan/tagsoup/Element;->d:Z

    return v0
.end method
