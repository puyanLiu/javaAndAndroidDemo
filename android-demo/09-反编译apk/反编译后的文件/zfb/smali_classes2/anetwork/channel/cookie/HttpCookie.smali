.class public final Lanetwork/channel/cookie/HttpCookie;
.super Ljava/lang/Object;
.source "HttpCookie.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:J

.field private final g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 65
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 68
    sput-object v0, Lanetwork/channel/cookie/HttpCookie;->a:Ljava/util/Set;

    const-string/jumbo v1, "comment"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v0, Lanetwork/channel/cookie/HttpCookie;->a:Ljava/util/Set;

    const-string/jumbo v1, "commenturl"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v0, Lanetwork/channel/cookie/HttpCookie;->a:Ljava/util/Set;

    const-string/jumbo v1, "discard"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v0, Lanetwork/channel/cookie/HttpCookie;->a:Ljava/util/Set;

    const-string/jumbo v1, "domain"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v0, Lanetwork/channel/cookie/HttpCookie;->a:Ljava/util/Set;

    const-string/jumbo v1, "expires"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v0, Lanetwork/channel/cookie/HttpCookie;->a:Ljava/util/Set;

    const-string/jumbo v1, "max-age"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v0, Lanetwork/channel/cookie/HttpCookie;->a:Ljava/util/Set;

    const-string/jumbo v1, "path"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v0, Lanetwork/channel/cookie/HttpCookie;->a:Ljava/util/Set;

    const-string/jumbo v1, "port"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v0, Lanetwork/channel/cookie/HttpCookie;->a:Ljava/util/Set;

    const-string/jumbo v1, "secure"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v0, Lanetwork/channel/cookie/HttpCookie;->a:Ljava/util/Set;

    const-string/jumbo v1, "version"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 448
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lanetwork/channel/cookie/HttpCookie;->f:J

    .line 455
    const/4 v0, 0x1

    iput v0, p0, Lanetwork/channel/cookie/HttpCookie;->m:I

    .line 470
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 471
    invoke-static {v0}, Lanetwork/channel/cookie/HttpCookie;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 472
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 475
    :cond_0
    iput-object v0, p0, Lanetwork/channel/cookie/HttpCookie;->g:Ljava/lang/String;

    .line 476
    iput-object p2, p0, Lanetwork/channel/cookie/HttpCookie;->l:Ljava/lang/String;

    .line 477
    return-void
.end method

.method static synthetic a(Lanetwork/channel/cookie/HttpCookie;I)I
    .locals 0

    .prologue
    .line 63
    iput p1, p0, Lanetwork/channel/cookie/HttpCookie;->m:I

    return p1
.end method

.method static synthetic a(Lanetwork/channel/cookie/HttpCookie;J)J
    .locals 0

    .prologue
    .line 63
    iput-wide p1, p0, Lanetwork/channel/cookie/HttpCookie;->f:J

    return-wide p1
.end method

.method static synthetic a(Lanetwork/channel/cookie/HttpCookie;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lanetwork/channel/cookie/HttpCookie;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lanetwork/channel/cookie/HttpCookie;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lanetwork/channel/cookie/HttpCookie;->b:Ljava/lang/String;

    return-object p1
.end method

.method public static a(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lanetwork/channel/cookie/HttpCookie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 215
    new-instance v0, Lanetwork/channel/cookie/b;

    invoke-direct {v0, p0}, Lanetwork/channel/cookie/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lanetwork/channel/cookie/b;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 771
    if-eqz p2, :cond_0

    if-eqz p0, :cond_0

    .line 772
    const-string/jumbo v0, ";$"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 773
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 774
    const-string/jumbo v0, "=\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 776
    const-string/jumbo v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 778
    :cond_0
    return-void
.end method

.method static synthetic b(Lanetwork/channel/cookie/HttpCookie;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lanetwork/channel/cookie/HttpCookie;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lanetwork/channel/cookie/HttpCookie;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lanetwork/channel/cookie/HttpCookie;->c:Ljava/lang/String;

    return-object p1
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 482
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lanetwork/channel/cookie/HttpCookie;->a:Ljava/util/Set;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v2, 0x1

    .line 484
    :goto_0
    if-eqz v2, :cond_3

    move v0, v1

    .line 485
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 486
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 489
    if-ltz v3, :cond_0

    const/16 v4, 0x7f

    if-ge v3, v4, :cond_0

    const/16 v4, 0x3b

    if-eq v3, v4, :cond_0

    const/16 v4, 0x2c

    if-eq v3, v4, :cond_0

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x20

    if-eq v3, v4, :cond_2

    .line 499
    :cond_0
    :goto_2
    return v1

    :cond_1
    move v2, v1

    .line 482
    goto :goto_0

    .line 485
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method static synthetic c(Lanetwork/channel/cookie/HttpCookie;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lanetwork/channel/cookie/HttpCookie;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lanetwork/channel/cookie/HttpCookie;)Z
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lanetwork/channel/cookie/HttpCookie;->d:Z

    return v0
.end method

.method static synthetic d(Lanetwork/channel/cookie/HttpCookie;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lanetwork/channel/cookie/HttpCookie;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lanetwork/channel/cookie/HttpCookie;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lanetwork/channel/cookie/HttpCookie;->h:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic e(Lanetwork/channel/cookie/HttpCookie;)J
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lanetwork/channel/cookie/HttpCookie;->f:J

    return-wide v0
.end method

.method static synthetic e(Lanetwork/channel/cookie/HttpCookie;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lanetwork/channel/cookie/HttpCookie;->i:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic f(Lanetwork/channel/cookie/HttpCookie;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lanetwork/channel/cookie/HttpCookie;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lanetwork/channel/cookie/HttpCookie;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lanetwork/channel/cookie/HttpCookie;->j:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic g(Lanetwork/channel/cookie/HttpCookie;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lanetwork/channel/cookie/HttpCookie;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lanetwork/channel/cookie/HttpCookie;)Z
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lanetwork/channel/cookie/HttpCookie;->k:Z

    return v0
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 687
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 689
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 700
    if-ne p1, p0, :cond_1

    .line 711
    :cond_0
    :goto_0
    return v0

    .line 703
    :cond_1
    instance-of v2, p1, Lanetwork/channel/cookie/HttpCookie;

    if-eqz v2, :cond_5

    .line 704
    check-cast p1, Lanetwork/channel/cookie/HttpCookie;

    .line 705
    iget-object v2, p0, Lanetwork/channel/cookie/HttpCookie;->g:Ljava/lang/String;

    iget-object v3, p1, Lanetwork/channel/cookie/HttpCookie;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lanetwork/channel/cookie/HttpCookie;->e:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lanetwork/channel/cookie/HttpCookie;->e:Ljava/lang/String;

    iget-object v3, p1, Lanetwork/channel/cookie/HttpCookie;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    iget-object v2, p0, Lanetwork/channel/cookie/HttpCookie;->i:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lanetwork/channel/cookie/HttpCookie;->i:Ljava/lang/String;

    iget-object v3, p1, Lanetwork/channel/cookie/HttpCookie;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p1, Lanetwork/channel/cookie/HttpCookie;->e:Ljava/lang/String;

    if-nez v2, :cond_2

    goto :goto_1

    :cond_4
    iget-object v2, p1, Lanetwork/channel/cookie/HttpCookie;->i:Ljava/lang/String;

    if-nez v2, :cond_2

    goto :goto_0

    :cond_5
    move v0, v1

    .line 711
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 727
    iget-object v0, p0, Lanetwork/channel/cookie/HttpCookie;->g:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    iget-object v0, p0, Lanetwork/channel/cookie/HttpCookie;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    iget-object v2, p0, Lanetwork/channel/cookie/HttpCookie;->i:Ljava/lang/String;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lanetwork/channel/cookie/HttpCookie;->e:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lanetwork/channel/cookie/HttpCookie;->i:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 738
    iget v0, p0, Lanetwork/channel/cookie/HttpCookie;->m:I

    if-nez v0, :cond_4

    .line 739
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 740
    iget-object v1, p0, Lanetwork/channel/cookie/HttpCookie;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lanetwork/channel/cookie/HttpCookie;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    iget-object v1, p0, Lanetwork/channel/cookie/HttpCookie;->h:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 742
    const-string/jumbo v1, ";Expires="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lanetwork/channel/cookie/HttpCookie;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    :cond_0
    iget-object v1, p0, Lanetwork/channel/cookie/HttpCookie;->i:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 745
    const-string/jumbo v1, ";Path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lanetwork/channel/cookie/HttpCookie;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    :cond_1
    iget-object v1, p0, Lanetwork/channel/cookie/HttpCookie;->e:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 748
    const-string/jumbo v1, ";Domain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lanetwork/channel/cookie/HttpCookie;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 750
    :cond_2
    iget-boolean v1, p0, Lanetwork/channel/cookie/HttpCookie;->k:Z

    if-eqz v1, :cond_3

    .line 751
    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lanetwork/channel/cookie/HttpCookie;->k:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 753
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 766
    :goto_0
    return-object v0

    .line 756
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lanetwork/channel/cookie/HttpCookie;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lanetwork/channel/cookie/HttpCookie;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 758
    const-string/jumbo v1, "Path"

    iget-object v2, p0, Lanetwork/channel/cookie/HttpCookie;->i:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lanetwork/channel/cookie/HttpCookie;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    const-string/jumbo v1, "Domain"

    iget-object v2, p0, Lanetwork/channel/cookie/HttpCookie;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lanetwork/channel/cookie/HttpCookie;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    const-string/jumbo v1, "Port"

    iget-object v2, p0, Lanetwork/channel/cookie/HttpCookie;->j:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lanetwork/channel/cookie/HttpCookie;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    iget-wide v1, p0, Lanetwork/channel/cookie/HttpCookie;->f:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_5

    .line 762
    const-string/jumbo v1, "Max-Age="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lanetwork/channel/cookie/HttpCookie;->f:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 764
    :cond_5
    const-string/jumbo v1, "Version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lanetwork/channel/cookie/HttpCookie;->m:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 766
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
