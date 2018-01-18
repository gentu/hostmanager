.class public Lcom/samsung/android/sdk/accessory/SAAuthenticationToken;
.super Ljava/lang/Object;
.source "SAAuthenticationToken.java"


# static fields
.field public static final AUTHENTICATION_TYPE_CERTIFICATE_X509:I = 0x60c

.field public static final AUTHENTICATION_TYPE_NONE:I = 0x60b

.field private static final KEY_ENCODING_FORMAT:Ljava/lang/String; = "ISO-8859-1"


# instance fields
.field private mAuthType:I

.field private mKey:[B


# direct methods
.method constructor <init>(I[B)V
    .locals 1
    .param p1, "authType"    # I
    .param p2, "key"    # [B

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    if-eqz p2, :cond_0

    .line 50
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAuthenticationToken;->mKey:[B

    .line 52
    :cond_0
    iput p1, p0, Lcom/samsung/android/sdk/accessory/SAAuthenticationToken;->mAuthType:I

    .line 53
    return-void
.end method


# virtual methods
.method public getAuthenticationType()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/samsung/android/sdk/accessory/SAAuthenticationToken;->mAuthType:I

    return v0
.end method

.method public getKey()[B
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAuthenticationToken;->mKey:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 79
    const/4 v1, 0x0

    .line 81
    .local v1, "key":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAAuthenticationToken;->mKey:[B

    if-eqz v2, :cond_0

    .line 82
    new-instance v1, Ljava/lang/String;

    .end local v1    # "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAAuthenticationToken;->mKey:[B

    const-string v3, "ISO-8859-1"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .restart local v1    # "key":Ljava/lang/String;
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Type:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/sdk/accessory/SAAuthenticationToken;->mAuthType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 84
    .end local v1    # "key":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v1, "Failed to encode Key!! charsetISO-8859-1 is not supported"

    .restart local v1    # "key":Ljava/lang/String;
    goto :goto_0
.end method
