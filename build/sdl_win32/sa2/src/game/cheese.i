# 0 "src/game/cheese.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "src/game/cheese.c"
# 1 "include/core.h" 1




# 1 "/usr/share/mingw-w64/include/string.h" 1 3
# 9 "/usr/share/mingw-w64/include/string.h" 3
# 1 "/usr/share/mingw-w64/include/crtdefs.h" 1 3
# 10 "/usr/share/mingw-w64/include/crtdefs.h" 3
# 1 "/usr/share/mingw-w64/include/corecrt.h" 1 3
# 10 "/usr/share/mingw-w64/include/corecrt.h" 3
# 1 "/usr/share/mingw-w64/include/_mingw.h" 1 3
# 10 "/usr/share/mingw-w64/include/_mingw.h" 3
# 1 "/usr/share/mingw-w64/include/_mingw_mac.h" 1 3
# 98 "/usr/share/mingw-w64/include/_mingw_mac.h" 3
             
# 107 "/usr/share/mingw-w64/include/_mingw_mac.h" 3
             
# 306 "/usr/share/mingw-w64/include/_mingw_mac.h" 3
       
# 384 "/usr/share/mingw-w64/include/_mingw_mac.h" 3
       
# 11 "/usr/share/mingw-w64/include/_mingw.h" 2 3
# 1 "/usr/share/mingw-w64/include/_mingw_secapi.h" 1 3
# 12 "/usr/share/mingw-w64/include/_mingw.h" 2 3
# 282 "/usr/share/mingw-w64/include/_mingw.h" 3
# 1 "/usr/share/mingw-w64/include/vadefs.h" 1 3
# 9 "/usr/share/mingw-w64/include/vadefs.h" 3
# 1 "/usr/share/mingw-w64/include/_mingw.h" 1 3
# 661 "/usr/share/mingw-w64/include/_mingw.h" 3
# 1 "/usr/share/mingw-w64/include/sdks/_mingw_ddk.h" 1 3
# 662 "/usr/share/mingw-w64/include/_mingw.h" 2 3
# 10 "/usr/share/mingw-w64/include/vadefs.h" 2 3




#pragma pack(push,_CRT_PACKING)
# 24 "/usr/share/mingw-w64/include/vadefs.h" 3
  
# 24 "/usr/share/mingw-w64/include/vadefs.h" 3
 typedef __builtin_va_list __gnuc_va_list;






  typedef __gnuc_va_list va_list;
# 103 "/usr/share/mingw-w64/include/vadefs.h" 3
#pragma pack(pop)
# 283 "/usr/share/mingw-w64/include/_mingw.h" 2 3
# 580 "/usr/share/mingw-w64/include/_mingw.h" 3
void __attribute__((__cdecl__)) __debugbreak(void);
extern __inline__ __attribute__((__always_inline__,__gnu_inline__)) void __attribute__((__cdecl__)) __debugbreak(void)
{

  __asm__ __volatile__("int {$}3":);







}
# 601 "/usr/share/mingw-w64/include/_mingw.h" 3
void __attribute__((__cdecl__)) __attribute__ ((__noreturn__)) __fastfail(unsigned int code);
extern __inline__ __attribute__((__always_inline__,__gnu_inline__)) void __attribute__((__cdecl__)) __attribute__ ((__noreturn__)) __fastfail(unsigned int code)
{

  __asm__ __volatile__("int {$}0x29"::"c"(code));
# 615 "/usr/share/mingw-w64/include/_mingw.h" 3
  __builtin_unreachable();
}
# 641 "/usr/share/mingw-w64/include/_mingw.h" 3
const char *__mingw_get_crt_info (void);
# 11 "/usr/share/mingw-w64/include/corecrt.h" 2 3




#pragma pack(push,_CRT_PACKING)
# 35 "/usr/share/mingw-w64/include/corecrt.h" 3
__extension__ typedef unsigned long long size_t;
# 45 "/usr/share/mingw-w64/include/corecrt.h" 3
__extension__ typedef long long ssize_t;






typedef size_t rsize_t;
# 62 "/usr/share/mingw-w64/include/corecrt.h" 3
__extension__ typedef long long intptr_t;
# 75 "/usr/share/mingw-w64/include/corecrt.h" 3
__extension__ typedef unsigned long long uintptr_t;
# 88 "/usr/share/mingw-w64/include/corecrt.h" 3
__extension__ typedef long long ptrdiff_t;
# 98 "/usr/share/mingw-w64/include/corecrt.h" 3
typedef unsigned short wchar_t;







typedef unsigned short wint_t;
typedef unsigned short wctype_t;





typedef int errno_t;




typedef long __time32_t;




__extension__ typedef long long __time64_t;
# 138 "/usr/share/mingw-w64/include/corecrt.h" 3
typedef __time64_t time_t;
# 430 "/usr/share/mingw-w64/include/corecrt.h" 3
struct threadlocaleinfostruct;
struct threadmbcinfostruct;
typedef struct threadlocaleinfostruct *pthreadlocinfo;
typedef struct threadmbcinfostruct *pthreadmbcinfo;
struct __lc_time_data;

typedef struct localeinfo_struct {
  pthreadlocinfo locinfo;
  pthreadmbcinfo mbcinfo;
} _locale_tstruct,*_locale_t;



typedef struct tagLC_ID {
  unsigned short wLanguage;
  unsigned short wCountry;
  unsigned short wCodePage;
} LC_ID,*LPLC_ID;




typedef struct threadlocaleinfostruct {





  int refcount;
  unsigned int lc_codepage;
  unsigned int lc_collate_cp;
  unsigned long lc_handle[6];
  LC_ID lc_id[6];
  struct {
    char *locale;
    wchar_t *wlocale;
    int *refcount;
    int *wrefcount;
  } lc_category[6];
  int lc_clike;
  int mb_cur_max;
  int *lconv_intl_refcount;
  int *lconv_num_refcount;
  int *lconv_mon_refcount;
  struct lconv *lconv;
  int *ctype1_refcount;
  unsigned short *ctype1;
  const unsigned short *pctype;
  const unsigned char *pclmap;
  const unsigned char *pcumap;
  struct __lc_time_data *lc_time_curr;

} threadlocinfo;
# 501 "/usr/share/mingw-w64/include/corecrt.h" 3
#pragma pack(pop)
# 11 "/usr/share/mingw-w64/include/crtdefs.h" 2 3
# 10 "/usr/share/mingw-w64/include/string.h" 2 3
# 45 "/usr/share/mingw-w64/include/string.h" 3
  __attribute__ ((__dllimport__)) void *__attribute__((__cdecl__)) _memccpy(void *_Dst,const void *_Src,int _Val,size_t _MaxCount);
  void *__attribute__((__cdecl__)) memchr(const void *_Buf ,int _Val,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _memicmp(const void *_Buf1,const void *_Buf2,size_t _Size);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _memicmp_l(const void *_Buf1,const void *_Buf2,size_t _Size,_locale_t _Locale);
  int __attribute__((__cdecl__)) memcmp(const void *_Buf1,const void *_Buf2,size_t _Size);
  void * __attribute__((__cdecl__)) memcpy(void * __restrict__ _Dst,const void * __restrict__ _Src,size_t _Size) ;
  __attribute__((dllimport)) errno_t __attribute__((__cdecl__)) memcpy_s (void *_dest,size_t _numberOfElements,const void *_src,size_t _count);
  void * __attribute__((__cdecl__)) mempcpy (void *_Dst, const void *_Src, size_t _Size);
  void * __attribute__((__cdecl__)) memset(void *_Dst,int _Val,size_t _Size);

  void * __attribute__((__cdecl__)) memccpy(void *_Dst,const void *_Src,int _Val,size_t _Size) ;
  int __attribute__((__cdecl__)) memicmp(const void *_Buf1,const void *_Buf2,size_t _Size) ;


  char * __attribute__((__cdecl__)) _strset(char *_Str,int _Val) ;
  char * __attribute__((__cdecl__)) _strset_l(char *_Str,int _Val,_locale_t _Locale) ;
  char * __attribute__((__cdecl__)) strcpy(char * __restrict__ _Dest,const char * __restrict__ _Source);
  char * __attribute__((__cdecl__)) strcat(char * __restrict__ _Dest,const char * __restrict__ _Source);
  int __attribute__((__cdecl__)) strcmp(const char *_Str1,const char *_Str2);
  size_t __attribute__((__cdecl__)) strlen(const char *_Str);
  size_t __attribute__((__cdecl__)) strnlen(const char *_Str,size_t _MaxCount);
  void *__attribute__((__cdecl__)) memmove(void *_Dst,const void *_Src,size_t _Size) ;
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _strdup(const char *_Src);
  char *__attribute__((__cdecl__)) strchr(const char *_Str,int _Val);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _stricmp(const char *_Str1,const char *_Str2);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _strcmpi(const char *_Str1,const char *_Str2);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _stricmp_l(const char *_Str1,const char *_Str2,_locale_t _Locale);
  int __attribute__((__cdecl__)) strcoll(const char *_Str1,const char *_Str2);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _strcoll_l(const char *_Str1,const char *_Str2,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _stricoll(const char *_Str1,const char *_Str2);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _stricoll_l(const char *_Str1,const char *_Str2,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _strncoll (const char *_Str1,const char *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _strncoll_l(const char *_Str1,const char *_Str2,size_t _MaxCount,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _strnicoll (const char *_Str1,const char *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _strnicoll_l(const char *_Str1,const char *_Str2,size_t _MaxCount,_locale_t _Locale);
  size_t __attribute__((__cdecl__)) strcspn(const char *_Str,const char *_Control);
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _strerror(const char *_ErrMsg) ;
  char *__attribute__((__cdecl__)) strerror(int) ;
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _strlwr(char *_String) ;
  char *strlwr_l(char *_String,_locale_t _Locale) ;
  char *__attribute__((__cdecl__)) strncat(char * __restrict__ _Dest,const char * __restrict__ _Source,size_t _Count) ;
  int __attribute__((__cdecl__)) strncmp(const char *_Str1,const char *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _strnicmp(const char *_Str1,const char *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _strnicmp_l(const char *_Str1,const char *_Str2,size_t _MaxCount,_locale_t _Locale);
  char *strncpy(char * __restrict__ _Dest,const char * __restrict__ _Source,size_t _Count) ;
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _strnset(char *_Str,int _Val,size_t _MaxCount) ;
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _strnset_l(char *str,int c,size_t count,_locale_t _Locale) ;
  char *__attribute__((__cdecl__)) strpbrk(const char *_Str,const char *_Control);
  char *__attribute__((__cdecl__)) strrchr(const char *_Str,int _Ch);
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _strrev(char *_Str);
  size_t __attribute__((__cdecl__)) strspn(const char *_Str,const char *_Control);
  char *__attribute__((__cdecl__)) strstr(const char *_Str,const char *_SubStr);
  char *__attribute__((__cdecl__)) strtok(char * __restrict__ _Str,const char * __restrict__ _Delim) ;
       

  char *strtok_r(char * __restrict__ _Str, const char * __restrict__ _Delim, char ** __restrict__ __last);
       
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _strupr(char *_String) ;
  __attribute__ ((__dllimport__)) char *_strupr_l(char *_String,_locale_t _Locale) ;
  size_t __attribute__((__cdecl__)) strxfrm(char * __restrict__ _Dst,const char * __restrict__ _Src,size_t _MaxCount);
  __attribute__ ((__dllimport__)) size_t __attribute__((__cdecl__)) _strxfrm_l(char * __restrict__ _Dst,const char * __restrict__ _Src,size_t _MaxCount,_locale_t _Locale);


  char *__attribute__((__cdecl__)) strdup(const char *_Src) ;
  int __attribute__((__cdecl__)) strcmpi(const char *_Str1,const char *_Str2) ;
  int __attribute__((__cdecl__)) stricmp(const char *_Str1,const char *_Str2) ;
  char *__attribute__((__cdecl__)) strlwr(char *_Str) ;
  int __attribute__((__cdecl__)) strnicmp(const char *_Str1,const char *_Str,size_t _MaxCount) ;
  int __attribute__((__cdecl__)) strncasecmp (const char *, const char *, size_t);
  int __attribute__((__cdecl__)) strcasecmp (const char *, const char *);







  char *__attribute__((__cdecl__)) strnset(char *_Str,int _Val,size_t _MaxCount) ;
  char *__attribute__((__cdecl__)) strrev(char *_Str) ;
  char *__attribute__((__cdecl__)) strset(char *_Str,int _Val) ;
  char *__attribute__((__cdecl__)) strupr(char *_Str) ;





  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wcsdup(const wchar_t *_Str);
  wchar_t *__attribute__((__cdecl__)) wcscat(wchar_t * __restrict__ _Dest,const wchar_t * __restrict__ _Source) ;
  wchar_t *__attribute__((__cdecl__)) wcschr(const wchar_t *_Str,wchar_t _Ch);
  int __attribute__((__cdecl__)) wcscmp(const wchar_t *_Str1,const wchar_t *_Str2);
  wchar_t *__attribute__((__cdecl__)) wcscpy(wchar_t * __restrict__ _Dest,const wchar_t * __restrict__ _Source) ;
  size_t __attribute__((__cdecl__)) wcscspn(const wchar_t *_Str,const wchar_t *_Control);
  size_t __attribute__((__cdecl__)) wcslen(const wchar_t *_Str);
  size_t __attribute__((__cdecl__)) wcsnlen(const wchar_t *_Src,size_t _MaxCount);
  wchar_t *wcsncat(wchar_t * __restrict__ _Dest,const wchar_t * __restrict__ _Source,size_t _Count) ;
  int __attribute__((__cdecl__)) wcsncmp(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount);
  wchar_t *wcsncpy(wchar_t * __restrict__ _Dest,const wchar_t * __restrict__ _Source,size_t _Count) ;
  wchar_t *__attribute__((__cdecl__)) _wcsncpy_l(wchar_t * __restrict__ _Dest,const wchar_t * __restrict__ _Source,size_t _Count,_locale_t _Locale) ;
  wchar_t *__attribute__((__cdecl__)) wcspbrk(const wchar_t *_Str,const wchar_t *_Control);
  wchar_t *__attribute__((__cdecl__)) wcsrchr(const wchar_t *_Str,wchar_t _Ch);
  size_t __attribute__((__cdecl__)) wcsspn(const wchar_t *_Str,const wchar_t *_Control);
  wchar_t *__attribute__((__cdecl__)) wcsstr(const wchar_t *_Str,const wchar_t *_SubStr);



  wchar_t *__attribute__((__cdecl__)) wcstok(wchar_t * __restrict__ _Str,const wchar_t * __restrict__ _Delim) ;

  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wcserror(int _ErrNum) ;
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) __wcserror(const wchar_t *_Str) ;
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsicmp(const wchar_t *_Str1,const wchar_t *_Str2);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsicmp_l(const wchar_t *_Str1,const wchar_t *_Str2,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsnicmp(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsnicmp_l(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount,_locale_t _Locale);
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wcsnset(wchar_t *_Str,wchar_t _Val,size_t _MaxCount) ;
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wcsrev(wchar_t *_Str);
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wcsset(wchar_t *_Str,wchar_t _Val) ;
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wcslwr(wchar_t *_String) ;
  __attribute__ ((__dllimport__)) wchar_t *_wcslwr_l(wchar_t *_String,_locale_t _Locale) ;
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wcsupr(wchar_t *_String) ;
  __attribute__ ((__dllimport__)) wchar_t *_wcsupr_l(wchar_t *_String,_locale_t _Locale) ;
  size_t __attribute__((__cdecl__)) wcsxfrm(wchar_t * __restrict__ _Dst,const wchar_t * __restrict__ _Src,size_t _MaxCount);
  __attribute__ ((__dllimport__)) size_t __attribute__((__cdecl__)) _wcsxfrm_l(wchar_t * __restrict__ _Dst,const wchar_t * __restrict__ _Src,size_t _MaxCount,_locale_t _Locale);
  int __attribute__((__cdecl__)) wcscoll(const wchar_t *_Str1,const wchar_t *_Str2);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcscoll_l(const wchar_t *_Str1,const wchar_t *_Str2,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsicoll(const wchar_t *_Str1,const wchar_t *_Str2);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsicoll_l(const wchar_t *_Str1,const wchar_t *_Str2,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsncoll(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsncoll_l(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsnicoll(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsnicoll_l(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount,_locale_t _Locale);


  wchar_t *__attribute__((__cdecl__)) wcsdup(const wchar_t *_Str) ;

  int __attribute__((__cdecl__)) wcsicmp(const wchar_t *_Str1,const wchar_t *_Str2) ;
  int __attribute__((__cdecl__)) wcsnicmp(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount) ;
  wchar_t *__attribute__((__cdecl__)) wcsnset(wchar_t *_Str,wchar_t _Val,size_t _MaxCount) ;
  wchar_t *__attribute__((__cdecl__)) wcsrev(wchar_t *_Str) ;
  wchar_t *__attribute__((__cdecl__)) wcsset(wchar_t *_Str,wchar_t _Val) ;
  wchar_t *__attribute__((__cdecl__)) wcslwr(wchar_t *_Str) ;
  wchar_t *__attribute__((__cdecl__)) wcsupr(wchar_t *_Str) ;
  int __attribute__((__cdecl__)) wcsicoll(const wchar_t *_Str1,const wchar_t *_Str2) ;







# 1 "/usr/share/mingw-w64/include/sec_api/string_s.h" 1 3
# 9 "/usr/share/mingw-w64/include/sec_api/string_s.h" 3
# 1 "/usr/share/mingw-w64/include/string.h" 1 3
# 10 "/usr/share/mingw-w64/include/sec_api/string_s.h" 2 3
# 24 "/usr/share/mingw-w64/include/sec_api/string_s.h" 3
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strset_s(char *_Dst,size_t _DstSize,int _Value);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strerror_s(char *_Buf,size_t _SizeInBytes,const char *_ErrMsg);
 
  __attribute__((dllimport)) errno_t __attribute__((__cdecl__)) strerror_s(char *_Buf,size_t _SizeInBytes,int _ErrNum);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strlwr_s(char *_Str,size_t _Size);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strlwr_s_l(char *_Str,size_t _Size,_locale_t _Locale);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strnset_s(char *_Str,size_t _Size,int _Val,size_t _MaxCount);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strupr_s(char *_Str,size_t _Size);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strupr_s_l(char *_Str,size_t _Size,_locale_t _Locale);
 

  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) strncat_s(char *_Dst,size_t _DstSizeInChars,const char *_Src,size_t _MaxCount);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strncat_s_l(char *_Dst,size_t _DstSizeInChars,const char *_Src,size_t _MaxCount,_locale_t _Locale);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) strcpy_s(char *_Dst, rsize_t _SizeInBytes, const char *_Src);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) strncpy_s(char *_Dst, size_t _DstSizeInChars, const char *_Src, size_t _MaxCount);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strncpy_s_l(char *_Dst, size_t _DstSizeInChars, const char *_Src, size_t _MaxCount, _locale_t _Locale);
  ;
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) strtok_s(char *_Str,const char *_Delim,char **_Context);
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _strtok_s_l(char *_Str,const char *_Delim,char **_Context,_locale_t _Locale);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) strcat_s(char *_Dst, rsize_t _SizeInBytes, const char * _Src);
 

  extern __inline__ __attribute__((__always_inline__,__gnu_inline__)) size_t __attribute__((__cdecl__)) strnlen_s(const char * _src, size_t _count) {
    return _src ? strnlen(_src, _count) : 0;
  }

  __attribute__((dllimport)) errno_t __attribute__((__cdecl__)) memmove_s(void *_dest,size_t _numberOfElements,const void *_src,size_t _count);


  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) wcstok_s(wchar_t *_Str,const wchar_t *_Delim,wchar_t **_Context);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcserror_s(wchar_t *_Buf,size_t _SizeInWords,int _ErrNum);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) __wcserror_s(wchar_t *_Buffer,size_t _SizeInWords,const wchar_t *_ErrMsg);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcsnset_s(wchar_t *_Dst,size_t _DstSizeInWords,wchar_t _Val,size_t _MaxCount);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcsset_s(wchar_t *_Str,size_t _SizeInWords,wchar_t _Val);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcslwr_s(wchar_t *_Str,size_t _SizeInWords);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcslwr_s_l(wchar_t *_Str,size_t _SizeInWords,_locale_t _Locale);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcsupr_s(wchar_t *_Str,size_t _Size);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcsupr_s_l(wchar_t *_Str,size_t _Size,_locale_t _Locale);
 

  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) wcscpy_s(wchar_t *_Dst, rsize_t _SizeInWords, const wchar_t *_Src);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) wcscat_s(wchar_t * _Dst, rsize_t _SizeInWords, const wchar_t *_Src);
 

  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) wcsncat_s(wchar_t *_Dst,size_t _DstSizeInChars,const wchar_t *_Src,size_t _MaxCount);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcsncat_s_l(wchar_t *_Dst,size_t _DstSizeInChars,const wchar_t *_Src,size_t _MaxCount,_locale_t _Locale);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) wcsncpy_s(wchar_t *_Dst, size_t _DstSizeInChars, const wchar_t *_Src, size_t _MaxCount);
  ;
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcsncpy_s_l(wchar_t *_Dst, size_t _DstSizeInChars, const wchar_t *_Src, size_t _MaxCount, _locale_t _Locale);
  ;
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wcstok_s_l(wchar_t *_Str,const wchar_t *_Delim,wchar_t **_Context,_locale_t _Locale);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcsset_s_l(wchar_t *_Str,size_t _SizeInChars,wchar_t _Val,_locale_t _Locale);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcsnset_s_l(wchar_t *_Str,size_t _SizeInChars,wchar_t _Val, size_t _Count,_locale_t _Locale);
 

  extern __inline__ __attribute__((__always_inline__,__gnu_inline__)) size_t __attribute__((__cdecl__)) wcsnlen_s(const wchar_t * _src, size_t _count) {
    return _src ? wcsnlen(_src, _count) : 0;
  }
# 195 "/usr/share/mingw-w64/include/string.h" 2 3
# 6 "include/core.h" 2


# 1 "include/global.h" 1



# 1 "include/config.h" 1
# 5 "include/global.h" 2
# 1 "include/gba/gba.h" 1



# 1 "include/gba/defines.h" 1




# 1 "/usr/lib/gcc/x86_64-w64-mingw32/13-win32/include/stddef.h" 1 3 4
# 1 "/usr/share/mingw-w64/include/stddef.h" 1 3 4
# 18 "/usr/share/mingw-w64/include/stddef.h" 3 4
  __attribute__ ((__dllimport__)) extern int *__attribute__((__cdecl__)) _errno(void);

  errno_t __attribute__((__cdecl__)) _set_errno(int _Value);
  errno_t __attribute__((__cdecl__)) _get_errno(int *_Value);


  __attribute__ ((__dllimport__)) extern unsigned long __attribute__((__cdecl__)) __threadid(void);

  __attribute__ ((__dllimport__)) extern uintptr_t __attribute__((__cdecl__)) __threadhandle(void);
# 424 "/usr/share/mingw-w64/include/stddef.h" 3 4
typedef struct {
  long long __max_align_ll __attribute__((__aligned__(__alignof__(long long))));
  long double __max_align_ld __attribute__((__aligned__(__alignof__(long double))));
} max_align_t;
# 2 "/usr/lib/gcc/x86_64-w64-mingw32/13-win32/include/stddef.h" 2 3 4
# 6 "include/gba/defines.h" 2
# 1 "/usr/lib/gcc/x86_64-w64-mingw32/13-win32/include/stdint.h" 1 3 4
# 9 "/usr/lib/gcc/x86_64-w64-mingw32/13-win32/include/stdint.h" 3 4
# 1 "/usr/share/mingw-w64/include/stdint.h" 1 3 4
# 32 "/usr/share/mingw-w64/include/stdint.h" 3 4
# 1 "/usr/lib/gcc/x86_64-w64-mingw32/13-win32/include/stddef.h" 1 3 4
# 1 "/usr/share/mingw-w64/include/stddef.h" 1 3 4
# 2 "/usr/lib/gcc/x86_64-w64-mingw32/13-win32/include/stddef.h" 2 3 4
# 33 "/usr/share/mingw-w64/include/stdint.h" 2 3 4


typedef signed char int8_t;
typedef unsigned char uint8_t;
typedef short int16_t;
typedef unsigned short uint16_t;
typedef int int32_t;
typedef unsigned uint32_t;
__extension__ typedef long long int64_t;
__extension__ typedef unsigned long long uint64_t;


typedef signed char int_least8_t;
typedef unsigned char uint_least8_t;
typedef short int_least16_t;
typedef unsigned short uint_least16_t;
typedef int int_least32_t;
typedef unsigned uint_least32_t;
__extension__ typedef long long int_least64_t;
__extension__ typedef unsigned long long uint_least64_t;





typedef signed char int_fast8_t;
typedef unsigned char uint_fast8_t;
typedef short int_fast16_t;
typedef unsigned short uint_fast16_t;
typedef int int_fast32_t;
typedef unsigned int uint_fast32_t;
__extension__ typedef long long int_fast64_t;
__extension__ typedef unsigned long long uint_fast64_t;


__extension__ typedef long long intmax_t;
__extension__ typedef unsigned long long uintmax_t;
# 10 "/usr/lib/gcc/x86_64-w64-mingw32/13-win32/include/stdint.h" 2 3 4
# 7 "include/gba/defines.h" 2
# 56 "include/gba/defines.h"

# 56 "include/gba/defines.h"
extern uint8_t VRAM[(0x18000 + (0x800 * (12)))];
# 65 "include/gba/defines.h"
extern struct SoundMixerState *SOUND_INFO_PTR;
extern uint16_t INTR_CHECK;
extern void (*INTR_VECTOR)(void);

extern uint8_t EWRAM_START[0x40000];
extern uint8_t IWRAM_START[0x7E00];
extern uint16_t PLTT[0x400/sizeof(uint16_t)];


extern uint8_t OAM[(128*0xC)];
# 131 "include/gba/defines.h"
typedef uint32_t winreg_t;
# 5 "include/gba/gba.h" 2
# 1 "include/gba/io_reg.h" 1
# 13 "include/gba/io_reg.h"
extern unsigned char REG_BASE[0x400];
# 6 "include/gba/gba.h" 2
# 1 "include/gba/types.h" 1
# 23 "include/gba/types.h"
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
typedef int8_t s8;
typedef int16_t s16;
typedef int32_t s32;
typedef int64_t s64;




typedef u16 MetatileIndexType;
# 47 "include/gba/types.h"
typedef u16 int_vcount;




typedef volatile u8 vu8;
typedef volatile u16 vu16;
typedef volatile u32 vu32;
typedef volatile u64 vu64;
typedef volatile s8 vs8;
typedef volatile s16 vs16;
typedef volatile s32 vs32;
typedef volatile s64 vs64;

typedef float f32;
typedef double f64;

typedef u8 bool8;
typedef u16 bool16;
typedef u32 bool32;

struct BgCnt
{
    u16 priority:2;
    u16 charBaseBlock:2;
    u16 dummy:2;
    u16 mosaic:1;
    u16 palettes:1;
    u16 screenBaseBlock:5;
    u16 areaOverflowMode:1;
    u16 screenSize:2;
};
typedef volatile struct BgCnt vBgCnt;

struct PlttData
{
    u16 r:5;
    u16 g:5;
    u16 b:5;
    u16 unused_15:1;
};
# 183 "include/gba/types.h"
typedef struct __attribute__((packed)) OamDataShort { s16 x; s16 y; u32 affineMode:2; u32 objMode:2; u32 mosaic:1; u32 bpp:1; u32 shape:2; u32 matrixNum:5; u32 size:2; u32 padding:17; u16 tileNum:10; u16 priority:2; u16 paletteNum:4; } OamDataShort;
# 201 "include/gba/types.h"
  ;

typedef union {
    struct {
               s16 x;
               s16 y;

               u32 affineMode:2;
             u32 objMode:2;
             u32 mosaic:1;
             u32 bpp:1;
             u32 shape:2;

               u32 matrixNum:5;
               u32 size:2;
               u32 padding:17;

               u16 tileNum:10;
             u16 priority:2;
             u16 paletteNum:4;

               u16 fractional:8;
             u16 integer:7;
             u16 sign:1;
    } split;

    struct {
        s16 x;
        s16 y;
        u16 attr0;
        u16 attr1;
        u16 attr2;
        u16 affineParam;
    } all;

    u16 raw[6];
} OamData;
# 308 "include/gba/types.h"
struct BgAffineSrcData
{
    s32 texX;
    s32 texY;
    s16 scrX;
    s16 scrY;
    s16 sx;
    s16 sy;
    u16 alpha;
};

struct BgAffineDstData
{
    s16 pa;
    s16 pb;
    s16 pc;
    s16 pd;
    s32 dx;
    s32 dy;
};

struct ObjAffineSrcData
{
    s16 xScale;
    s16 yScale;
    u16 rotation;
};


struct SioNormalCnt
{
    u16 sck_I_O:1;
    u16 sck:1;
    u16 ackRecv:1;
    u16 ackSend:1;
    u16 unused_6_4:3;
    u16 enable:1;
    u16 unused_11_8:4;
    u16 mode:2;
    u16 ifEnable:1;
    u16 unused_15:1;
    u8 data;
    u8 unused_31_24;
};
# 362 "include/gba/types.h"
struct SioMultiCnt
{
    u16 baudRate:2;
    u16 si:1;
    u16 sd:1;
    u16 id:2;
    u16 error:1;
    u16 enable:1;
    u16 unused_11_8:4;
    u16 mode:2;
    u16 ifEnable:1;
    u16 unused_15:1;
    u16 data;
};
# 387 "include/gba/types.h"
struct SioUartCnt
{
    u16 baudRate:2;
    u16 ctsEnable:1;
    u16 paritySelect:1;
    u16 transDataFull:1;
    u16 recvDataEmpty:1;
    u16 error:1;
    u16 length:1;
    u16 fifoEnable:1;
    u16 parityEnable:1;
    u16 transEnable:1;
    u16 recvEnable:1;
    u16 mode:2;
    u16 ifEnable:1;
    u16 unused_15:1;
    u8 data;
    u8 unused_31_24;
};
# 415 "include/gba/types.h"
struct JoyCnt
{
    u8 ifReset:1;
    u8 ifRecv:1;
    u8 ifSend:1;
    u8 unused_5_3:3;
    u8 ifEnable:1;
    u8 unused_7:1;
};


struct JoyStat
{
    u8 unused_0:1;
    u8 recv:1;
    u8 unused_2:1;
    u8 send:1;
    u8 flags:2;
    u8 unused_7_6:2;
};


struct RCnt
{
    u8 sc:1;
    u8 sd:1;
    u8 si:1;
    u8 so:1;
    u8 sc_i_o:1;
    u8 sd_i_o:1;
    u8 si_i_o:1;
    u8 so_i_o:1;
    u8 ifEnable:1;
    u8 unused_13_9:5;
    u8 sioModeMaster:2;
};
# 7 "include/gba/gba.h" 2
# 1 "include/gba/multiboot.h" 1
# 9 "include/gba/multiboot.h"
struct MultiBootParam
{
    u32 system_work[5];
    u8 handshake_data;
    u8 padding;
    u16 handshake_timeout;
    u8 probe_count;
    u8 client_data[3];
    u8 palette_data;
    u8 response_bit;
    u8 client_bit;
    u8 reserved1;
    u8 *boot_srcp;
    u8 *boot_endp;
    u8 *masterp;
    u8 *reserved2[3];
    u32 system_work2[4];
    u8 sendflag;
    u8 probe_target_bit;
    u8 check_wait;
    u8 server_type;
};
# 8 "include/gba/gba.h" 2
# 1 "include/gba/syscall.h" 1
# 14 "include/gba/syscall.h"
typedef struct {
    u32 srcLength : 16;
    u32 srcWidth : 8;
    u32 dstWidth : 8;
} BitUnPackData;

void SoftReset(u32 resetFlags);
void SoftResetExram(u32 resetFlags);

void RegisterRamReset(u32 resetFlags);

void VBlankIntrWait(void);

u16 Sqrt(u32 num);

u16 ArcTan2(s16 x, s16 y);





void CpuSet(const void *src, void *dest, u32 control);



void CpuFastSet(const void *src, void *dest, u32 control);

void BgAffineSet(struct BgAffineSrcData *src, struct BgAffineDstData *dest, s32 count);

void ObjAffineSet(struct ObjAffineSrcData *src, void *dest, s32 count, s32 offset);

void LZ77UnCompWram(const void *src, void *dest);

void LZ77UnCompVram(const void *src, void *dest);

void RLUnCompWram(const void *src, void *dest);

void RLUnCompVram(const void *src, void *dest);

int MultiBoot(struct MultiBootParam *mp);
# 72 "include/gba/syscall.h"
void SoundBiasReset(void);

void SoundBiasSet(void);
# 9 "include/gba/gba.h" 2
# 1 "include/gba/macro.h" 1



# 1 "include/gba/cpuset_macros.h" 1
# 5 "include/gba/macro.h" 2
# 1 "include/gba/dma_macros.h" 1



# 1 "include/config.h" 1
# 5 "include/gba/dma_macros.h" 2
# 16 "include/gba/dma_macros.h"
extern void DmaSet(int dmaNum, const void *src, void *dest, u32 control);
# 78 "include/gba/dma_macros.h"
extern void DmaStop(int dmaNum);
# 172 "include/gba/dma_macros.h"
extern void DmaWait(int dmaNum);
# 6 "include/gba/macro.h" 2
# 10 "include/gba/gba.h" 2
# 1 "include/gba/isagbprint.h" 1
# 13 "include/gba/isagbprint.h"
void AGBPrintInit(void);
void AGBPutc(const char cChr);
void AGBPrint(const char *pBuf);
void AGBPrintf(const char *pBuf, ...);
void AGBPrintFlush1Block(void);
void AGBPrintFlush(void);
void AGBAssert(const char *pFile, int nLine, const char *pExpression, int nStopProgram);
# 11 "include/gba/gba.h" 2
# 6 "include/global.h" 2
# 21 "include/global.h"
void *Platform_malloc(size_t numBytes);
void *Platform_realloc(void *ptr, size_t numBytes);
void Platform_free(void *ptr);
# 33 "include/global.h"
typedef void (*VoidFn)(void);
# 301 "include/global.h"
typedef struct {
    s16 x;
    s16 y;
} Vec2_16;

typedef struct {
    s32 x;
    s32 y;
} Vec2_32;

typedef struct {
    u8 reserved : 4;
    u8 compressedType : 4;
    u32 size : 24;
    void *data;
} RLCompressed;

struct BlendRegs {
    u16 bldCnt;
    u16 bldAlpha;
    u16 bldY;
};







typedef struct {
               u16 pa, pb, pc, pd;
               u32 x, y;
} BgAffineReg;


typedef void (*HBlankIntrFunc)(int_vcount vcount);
typedef void (*IntrFunc)(void);

extern void *iwram_end;
extern void *ewram_end;

extern void *rom_footer;
# 9 "include/core.h" 2
# 1 "include/sprite.h" 1




# 1 "include/malloc_vram.h" 1
# 24 "include/malloc_vram.h"
void *VramMalloc(u32);
void VramResetHeapState(void);
void VramFree(void *);
# 6 "include/sprite.h" 2

typedef u16 AnimId;

struct GraphicsData {
               const void *src;
               void *dest;
               u16 size;
               AnimId anim;
};
# 66 "include/sprite.h"
typedef struct {
               struct GraphicsData graphics;
# 81 "include/sprite.h"
               u16 *layoutVram;



               const u16 *layout;




               u16 xTiles;
               u16 yTiles;

               u16 unk18;
               u16 unk1A;
               u16 tilemapId;
               u16 unk1E;

               u16 unk20;
               u16 unk22;
               u16 unk24;




               u16 targetTilesX;
               u16 targetTilesY;

               u8 paletteOffset;
               u8 animFrameCounter;
               u8 animDelayCounter;

               u16 flags;


               u16 scrollX;
               u16 scrollY;
               u16 prevScrollX;
               u16 prevScrollY;


               const MetatileIndexType *metatileMap;
               u16 mapWidth;
               u16 mapHeight;
} Background;

typedef struct {






               u8 flip;



               u8 oamIndex;




               u16 numSubframes;


               u16 width;

               u16 height;

               s16 offsetX;
               s16 offsetY;
} SpriteOffset;





typedef struct {

               s32 index;


               s8 left;
               s8 top;
               s8 right;
               s8 bottom;
} Hitbox;





typedef struct {
               struct GraphicsData graphics;
               const SpriteOffset *dimensions;


               u32 frameFlags;
# 195 "include/sprite.h"
               u16 animCursor;

               s16 x;
               s16 y;

               u16 oamFlags;

               s16 qAnimDelay;
               u16 prevAnim;
               u8 variant;
               u8 prevVariant;


               u8 animSpeed;

               u8 oamBaseIndex;
               u8 numSubFrames;
               u8 palId;
               Hitbox hitboxes[1];
} Sprite ;


typedef struct {
    Sprite s;
    Hitbox hb1;
} Sprite2;


typedef struct {
    Sprite s;
    Hitbox hb1;
    Hitbox hb2;
} Sprite3;

typedef struct {
               u16 rotation;
               s16 qScaleX;
               s16 qScaleY;
               s16 x;
               s16 y;
} SpriteTransform;

typedef struct {
               s16 unk0[4];
               s16 qDirX;
               s16 qDirY;

               s16 unkC[2];

               s32 posX;
               s32 posY;

               s16 unk18[2][2];
               u16 affineIndex;
} UnkSpriteStruct;

typedef struct {
               u32 numTiles;
               AnimId anim;
               u8 variant;
} TileInfo;


typedef struct {
               void *tiles;
               AnimId anim;
               u8 variant;
} TileInfoPtr;

typedef struct __attribute__((packed)) TileInfo16 { u16 numTiles; AnimId anim; u16 variant; } TileInfo16;



  ;

extern const u8 gOamShapesSizes[12][2];

typedef enum {
    ACMD_RESULT__ANIM_CHANGED = -1,
    ACMD_RESULT__ENDED = 0,
    ACMD_RESULT__RUNNING = +1,
} AnimCmdResult;

AnimCmdResult UpdateSpriteAnimation(Sprite *);

void DisplaySprite(Sprite *);
void DrawBackground(Background *);
bool32 sub_8002B20(void);
bool32 sub_80039E4(void);
bool32 sub_8004010(void);
void ProcessOamBuffers(void);
OamData *OamMalloc(u8 order);

void TransformSprite(Sprite *, SpriteTransform *);
void UnusedTransform(Sprite *, SpriteTransform *);
void sub_8004E14(Sprite *, SpriteTransform *);

void sub_8003EE4(u16 p0, s16 p1, s16 p2, s16 p3, s16 p4, s16 p5, s16 p6, BgAffineReg *affine);
void sub_8006228(u8 p0, u8 p1, u8 p2, u8 p3, u8 p4, u8 p5);
void sub_80064A8(u8 p0, u8 p1, u8 p2, u8 p3, u8 p4, u8 p5);

s32 UpdateSpriteAnimation_BG(Sprite *);
void DisplaySprite_BG(Sprite *);
void sub_80047A0(u16, s16, s16, u16);

s16 sub_8004418(s16 x, s16 y);
void numToASCII(u8 digits[5], u16 number);
# 10 "include/core.h" 2
# 1 "include/task.h" 1





struct Task;

typedef void (*TaskMain)(void);
typedef void (*TaskDestructor)(struct Task *);
# 25 "include/task.h"
typedef struct Task *TaskPtr;
typedef TaskPtr TaskPtr32;




typedef void *IwramData;
# 55 "include/task.h"
typedef struct Task {
               TaskPtr parent;
               TaskPtr prev;
               TaskPtr next;
               IwramData data;

    u32 dataSize;

               TaskMain main;
               TaskDestructor dtor;
               u16 priority;
               u16 flags;



               u8 unk14;
               u8 unk15;
               u16 unk16;
               u16 unk18;





} Task;





struct IwramNode;

typedef struct IwramNode *IwramNodePtr;
typedef IwramNodePtr IwramNodePtr32;




struct IwramNode {
    IwramNodePtr next;
    s16 state;

    u8 __attribute__((aligned(sizeof(void *)))) space[0];
};
# 113 "include/task.h"
extern struct Task gTasks[128];
extern struct Task gEmptyTask;
extern struct Task *gTaskPtrs[128];
extern s32 gNumTasks;



extern struct Task *gNextTask;
extern struct Task *gCurTask;
extern u8 gIwramHeap[((0x881) * sizeof(uintptr_t))];

u32 TasksInit(void);
void TasksExec(void);
# 141 "include/task.h"
struct Task *TaskCreate(TaskMain taskMain, u16 structSize, u16 priority, u16 flags, TaskDestructor taskDestructor);


void TaskDestroy(struct Task *);
void *IwramMalloc(u16);
void IwramFree(void *p);
void TasksDestroyInPriorityRange(u16, u16);
# 11 "include/core.h" 2
# 1 "include/flags.h" 1
# 23 "include/flags.h"
extern u32 gFlags;
# 12 "include/core.h" 2
# 1 "include/tilemap.h" 1
# 10 "include/tilemap.h"
typedef struct {
    u16 index : 10;
    u16 xFlip : 1;
    u16 yFlip : 1;
    u16 pal : 4;
} Tile;

typedef struct {
               u16 xTiles;
               u16 yTiles;
               u16 animTileSize;
               u8 animFrameCount;
               u8 animDelay;
               const u8 *tiles;
               u32 tilesSize;
               const u16 *palette;
               u16 palOffset;
               u16 palLength;



               const u16 *map;
} Tilemap;

struct MapHeader {
               Tilemap tileset;
               const u16 *metatileMap;
               u16 mapWidth;
               u16 mapHeight;
};
# 13 "include/core.h" 2
# 1 "include/input_recorder.h" 1
# 12 "include/input_recorder.h"
struct InputRecorder {
               s32 playbackHead;
               s32 recordHead;
               u8 mode;
};

void InputRecorderResetRecordHead(void);
void InputRecorderResetPlaybackHead(void);
void InputRecorderLoadTape(void);
u16 InputRecorderRead(void);
void InputRecorderWrite(u16);
# 14 "include/core.h" 2
# 1 "include/animation_commands.h" 1
# 9 "include/animation_commands.h"
typedef AnimCmdResult (*AnimationCommandFunc)(void *cursor, Sprite *sprite);

typedef struct {
               s32 cmdId;



               s32 tileIndex;

               u32 numTilesToCopy;
} ACmd_GetTiles;

typedef struct {
               s32 cmdId;

               s32 palId;
               u16 numColors;
               u16 insertOffset;
} ACmd_GetPalette;

typedef struct {
               s32 cmdId;

               s32 offset;
} ACmd_JumpBack;

typedef struct {
               s32 cmdId;
} ACmd_4;

typedef struct {
               s32 cmdId;

               u16 songId;
} ACmd_PlaySoundEffect;


typedef struct {
               s32 cmdId;

               Hitbox hitbox;
} ACmd_Hitbox;

typedef struct {
               s32 cmdId;

               u16 x;
               u16 y;
} ACmd_TranslateSprite;

typedef struct {
               s32 cmdId;

               s32 unk4;
               s32 unk8;
} ACmd_8;

typedef struct {
               s32 cmdId;

               AnimId animId;
               u16 variant;
} ACmd_SetIdAndVariant;

typedef struct {
               s32 cmdId;

               s32 unk4;
               s32 unk8;
               s32 unkC;
} ACmd_10;

typedef struct {
               s32 cmdId;

               s32 priority;
} ACmd_SetSpritePriority;

typedef struct {
               s32 cmdId;

               s32 orderIndex;
} ACmd_SetOamOrder;

typedef struct {

    s32 delay;


    s32 index;
} ACmd_ShowFrame;

typedef union {
    s32 id;

    ACmd_GetTiles tiles;
    ACmd_GetPalette pal;
    ACmd_JumpBack jump;
    ACmd_4 end;
    ACmd_PlaySoundEffect sfx;
    ACmd_Hitbox _6;
    ACmd_TranslateSprite translate;
    ACmd_8 _8;
    ACmd_SetIdAndVariant setAnimId;
    ACmd_10 _10;
    ACmd_SetSpritePriority _11;
    ACmd_SetOamOrder setOamOrder;

    ACmd_ShowFrame show;
} ACmd;

u32 Base10DigitsToHexNibbles(u16 num);
# 15 "include/core.h" 2

struct MultiSioData_0_0 {

    u16 unk0;

    u8 unk2;

    u8 unk3;
    u32 unk4;
    u16 unk8[3];



    u8 unkE;
    u8 unkF;
    u32 unk10;
};

struct MultiSioData_0_1 {

    u16 unk0;

    u8 unk2;

    u8 unk3;

    u16 unk4;
    u16 unk6;

    u16 unk8[3];



    u8 unkE;
    u8 unkF;
    u32 unk10;
};
struct MultiSioData_0_2 {

    u8 unk0;
    u8 filler1;

    u8 unk2;

    u8 unk3;

    u16 unk4;
    u16 unk6;

    u16 unk8[3];



    u8 unkE;
    u8 unkF;
    u32 unk10;
};

struct MultiSioData_0_3 {

    u16 unk0;

    u8 unk2;

    u8 unk3;

    u16 unk4;
    u16 unk6;

    u32 unk8;
    u16 unkC;



    u8 unkE;
    u8 unkF;
    u32 unk10;
};

struct MultiSioData_0_4 {

    u16 unk0;

    s16 x;
    s16 y;
    u16 unk6;
    u16 unk8;
    u8 unkA;
    u8 unkB;
    u8 unkC;
    u8 unkD;



    u8 unkE;
    u8 numRings;
    u8 unk10;
    u8 unk11;
    u8 unk12;
    u8 unk13;
};

union MultiSioData {
    struct MultiSioData_0_0 pat0;
    struct MultiSioData_0_1 pat1;
    struct MultiSioData_0_2 pat2;
    struct MultiSioData_0_3 pat3;
    struct MultiSioData_0_4 pat4;
};







typedef u32 collPxDim_t;



typedef struct {
               const s8 *height_map;
               const u8 *tile_rotation;
               const u16 *metatiles;
               const MetatileIndexType *map[2];
               const u16 *flags;
               u16 levelX, levelY;
               collPxDim_t pxWidth, pxHeight;


} Collision;

struct Unk_03003674_1_Sub {
    u16 unk0, unk2, unk4, unk6;
    s16 unk8, unkA;
};

struct Unk_03003674_1_Full {
    struct Unk_03003674_1_Sub sub;
    u32 unkC;
};

union Unk_03003674_1 {
    const struct Unk_03003674_1_Sub *sub;
    const struct Unk_03003674_1_Full *full;
};

struct Unk_03003674 {
    const union Unk_03003674_0 *const *unk0;
    const union Unk_03003674_1 *unk4;
    const u16 *const *unk8;
    const void *unkC;
    const void *unk10;
    const void *unk14;
    const s32 *unk18;
};

struct SpriteTables {
               const ACmd **const *animations;
               const SpriteOffset *const *dimensions;
               const u16 **const oamData;
               const u16 *const palettes;
               const u8 *const tiles_4bpp;
               const u8 *const tiles_8bpp;
};
# 197 "include/core.h"
extern u32 gFlags;
extern u32 gFlagsPreVBlank;

extern u32 gFrameCount;
# 215 "include/core.h"
extern IntrFunc gIntrTable[16];
extern IntrFunc const gIntrTableTemplate[14];
extern u32 gIntrMainBuf[0x80];

extern struct Task *gCurTask;
extern struct Task gTasks[128];
extern struct Task *gTaskPtrs[128];
extern struct Task *gNextTask;
extern struct Task gEmptyTask;
extern s32 gNumTasks;

extern u16 gInput;
extern u16 gPrevInput;
extern u16 gPhysicalInput;
extern u16 gReleasedKeys;
extern u16 gRepeatedKeys;
extern u16 gPressedKeys;
extern u8 gKeysFirstRepeatIntervals[10];
extern u8 gRepeatedKeysTestCounter[10];
extern u8 gKeysContinuedRepeatIntervals[10];

extern const u8 *gInputPlaybackData;
extern struct InputRecorder gInputRecorder;
extern u16 *gInputRecorderTapeBuffer;

extern union MultiSioData gMultiSioSend;
extern union MultiSioData gMultiSioRecv[4];
extern u32 gMultiSioStatusFlags;
extern bool8 gMultiSioEnabled;

extern HBlankIntrFunc gHBlankIntrs[4];
extern HBlankIntrFunc gHBlankCallbacks[4];
extern u8 gNumHBlankCallbacks;
extern u8 gNumHBlankIntrs;

extern u8 gIwramHeap[((0x881) * sizeof(uintptr_t))];

extern void *gVramHeapStartAddr;
extern u16 gVramHeapMaxTileSlots;
extern u16 gVramHeapState[((0x18000 + (0x800 * (12))) - 0x10000) / (4 * 32)];

extern bool8 gExecSoundMain;

extern u16 gDispCnt;
# 273 "include/core.h"
extern winreg_t gWinRegs[6];
extern struct BlendRegs gBldRegs;
extern BgAffineReg gBgAffineRegs[2];
extern u16 gObjPalette[16 * 16u];
extern u16 gBgPalette[16 * 16u];

extern u16 gBgCntRegs[4];



extern s16 gBgScrollRegs[4][2];

extern OamData gOamMallocBuffer[128];
extern OamData gOamBuffer[128];


extern int_vcount gBgOffsetsBuffer[2][240][4];
extern Background *gBackgroundsCopyQueue[16];


extern void *gBgOffsetsHBlankPrimary;

extern u16 gUnknown_030017F0;
extern Vec2_16 gSpriteOffset;
extern u8 gOamMallocOrders_StartIndex[32];
extern IntrFunc gVBlankCallbacks[4];

extern u8 gOamFreeIndex;
extern u16 gUnknown_03001944;
extern u8 gNumVBlankIntrs;
extern s16 gUnknown_0300194C;

extern Tilemap **gTilemapsRef;
extern u8 gBgSprites_Unknown2[4][4];
extern u8 gBgSprites_Unknown1[4];
# 317 "include/core.h"
extern struct GraphicsData *gVramGraphicsCopyQueue[32];
extern u8 gVramGraphicsCopyQueueIndex;
# 334 "include/core.h"
extern struct GraphicsData gVramGraphicsCopyQueueBuffer[32];
# 357 "include/core.h"
extern void *gBgOffsetsHBlankSecondary;
extern void *gBgOffsetsSecondary;

extern s16 gMosaicReg;
extern u8 gUnknown_030026F4;

extern s16 gUnknown_03002820;
extern u8 gVCountSetting;
extern void *gHBlankCopyTarget;
extern u8 gBackgroundsCopyQueueIndex;
extern u8 gHBlankCopySize;
extern u16 gUnknown_03002A8C;


extern u8 gOamFirstPausedIndex;
extern u8 gBackgroundsCopyQueueCursor;
extern Sprite *gBgSprites[16];
extern u8 gNumVBlankCallbacks;
extern void *gBgOffsetsPrimary;
extern u16 gUnknown_03004D58;
extern u8 gVramGraphicsCopyCursor;
extern u8 gOamMallocOrders_EndIndex[0x20];
extern u8 gBgSpritesCount;
extern u16 gUnknown_03005394;
extern u16 gUnknown_03005398;
extern IntrFunc gVBlankIntrs[4];
extern s32 gPseudoRandom;
extern u8 gOamMallocCopiedOrder[128];
extern struct MultiBootParam gMultiBootParam;

extern const struct SpriteTables *gRefSpriteTables;

void EngineInit(void);
void EngineMainLoop(void);
# 2 "src/game/cheese.c" 2
# 1 "include/malloc_vram.h" 1
# 3 "src/game/cheese.c" 2
# 1 "include/trig.h" 1





extern const s16 gSineTable[1280];
# 4 "src/game/cheese.c" 2

# 1 "include/game/sa1_sa2_shared/globals.h" 1



# 1 "include/multi_sio.h" 1
# 83 "include/multi_sio.h"
struct MultiSioPacket {
    u8 frameCounter;
    u8 recvErrorFlags : 4;
    u8 loadRequest : 1;
    u8 downloadSuccessFlag : 1;
    u8 loadSuccessFlag : 1;
    u8 reserved_0 : 1;
    u16 checkSum;
    u16 data[20 / 2];
    u16 overrunCatch[2];
};


struct MultiSioArea {
    u8 type;
    u8 state;
    u8 connectedFlags;
    u8 recvSuccessFlags;

    u8 syncRecvFlag[4];

    u8 downloadSuccessFlags : 4;
    u8 loadEnable : 1;
    u8 loadRequest : 1;
    u8 loadSuccessFlag : 1;
    u8 startFlag : 1;

    u8 hardError;
    u8 recvFlagsAvailableCounter;


    u8 sendFrameCounter;
    u8 recvFrameCounter[4][2];

    s32 sendBufCounter;
    s32 recvBufCounter[4];

    u16 *nextSendBufp;
    u16 *currentSendBufp;
    u16 *currentRecvBufp[4];
    u16 *lastRecvBufp[4];
    u16 *recvCheckBufp[4];

    struct MultiSioPacket sendBuf[2];
    struct MultiSioPacket recvBuf[4][3];

};







extern struct MultiSioArea gMultiSioArea;





extern void MultiSioInit(u32 connectedFlags);
# 155 "include/multi_sio.h"
void MultiSioStart(void);
# 164 "include/multi_sio.h"
void MultiSioStop(void);







extern u32 MultiSioMain(void *sendp, void *recvp, u32 loadRequest);
# 224 "include/multi_sio.h"
struct MultiSioReturn {
    u32 recvSuccessFlags : 4;
    u32 loadEnable : 1;
    u32 loadRequest : 1;
    u32 loadSuccessFlag : 1;
    u32 type : 1;
    u32 connectedFlags : 4;
    u32 hardError : 1;
    u32 idOverError : 1;
    u32 reserved : 1;
    u32 recvFlagsAvailable : 1;
};





extern void MultiSioIntr(void);
# 257 "include/multi_sio.h"
extern void MultiSioSendDataSet(void *sendp, u32 loadReq);
# 272 "include/multi_sio.h"
extern u32 MultiSioRecvDataCheck(void *recvp);
# 5 "include/game/sa1_sa2_shared/globals.h" 2
# 75 "include/game/sa1_sa2_shared/globals.h"
typedef struct {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u8 unk4;
    u8 unk5;
    u16 fadeoutSpeed;
} MusicManagerState;

typedef struct {
    s32 squarePlayerDistance;
    u16 angle;
} HomingTarget;






typedef struct {
    u8 type;

    u8 opaque[7];
} RoomEvent;


typedef struct {
               s32 squarePlayerDistance;
               struct Task *task;
} CheeseTarget;


extern u8 gDemoPlayCounter;
extern u8 gGameMode;

extern s8 gCurrentLevel;
extern s8 gSelectedCharacter;





extern u8 gMultiplayerLanguage;



extern u16 gRingCount;

extern MusicManagerState gMusicManagerState;


extern u32 gCourseTime;


extern u8 gSpecialRingCount;


extern s32 gWorldSpeedY;
extern s32 gWorldSpeedX;

extern u16 gBossCameraClampYLower;
extern u16 gBossCameraClampYUpper;
extern u8 gRandomItemBox;
extern u8 gSpikesUnknownTimer;

extern s8 gUnknown_0300543C;
extern struct Task *gEntitiesManagerTask;

extern u8 gDestroySpotlights;

extern u8 gRoomEventQueueSendPos;



extern u16 gStageFlags;
extern u16 gPrevStageFlags;

extern u8 gDifficultyLevel;

extern s8 gTrappedAnimalVariant;

extern u8 gBossIndex;
extern u8 gNumSingleplayerCharacters;



extern u32 gStageTime;
extern u32 gMPStageStartFrameCount;

extern u32 gCheckpointTime;

extern u8 gRoomEventQueueWritePos;

extern u8 gBossRingsRespawnCount;
extern bool8 gBossRingsShallRespawn;
extern bool8 gBoostEffectTasksCreated;

extern struct Task *gMultiplayerPlayerTasks[4];
extern s8 gMultiplayerCharacters[4];
extern s8 gMultiplayerRanks[4];
extern u8 gOamMatrixIndex;

extern u8 gMultiplayerMissingHeartbeats[4];
extern u8 gActiveCollectRingEffectCount;

extern u8 gMultiplayerUnlockedCharacters;
extern u8 gMultiplayerUnlockedLevels;
extern u32 gMultiplayerIds[4];
extern u16 gMultiplayerNames[4][6];

extern u32 gMultiplayerPseudoRandom;

extern s32 gLevelScore;
extern u8 gNumLives;
extern bool8 gFinalBossActive;

extern HomingTarget gHomingTarget;

extern u8 gMultiplayerConnections;


extern s32 gStageGoalX;

extern u8 gMPRingCollectWins[4];
extern u8 gMultiplayerCharRings[4];

extern RoomEvent gRoomEventQueue[16];

extern CheeseTarget gCheeseTarget;

extern u8 gFrameInputsBuf[4];






struct InputCounters {
    u8 unk0, unk1, unk2, unk3;
};

extern u8 gNewInputCountersIndex;
extern struct InputCounters gNewInputCounters[32];


extern u8 gFrameInputsBufIndex;
# 6 "src/game/cheese.c" 2
# 1 "include/game/cheese.h" 1



# 1 "include/global.h" 1
# 5 "include/game/cheese.h" 2


# 1 "include/game/multiplayer/mp_player.h" 1




# 1 "include/sprite.h" 1
# 6 "include/game/multiplayer/mp_player.h" 2

typedef struct {


    Sprite s;
    Hitbox reserved;

    SpriteTransform transform;
    s32 unk44;
    s32 unk48;
    u32 unk4C;
    Vec2_16 pos;
    u16 unk54;
    u8 unk56;
    u8 unk57;
    u8 unk58[4];
    u32 unk5C;
    u8 unk60;
    u8 unk61;
    u16 unk62;
    u8 unk64;
    s16 unk66;
    s16 unk68;
    u16 unk6A;
} MultiplayerPlayer;

void CreateMultiplayerPlayer(u8);

void sub_8018818(void);

extern bool8 gShouldSpawnMPAttack2Effect;
# 8 "include/game/cheese.h" 2
# 1 "include/game/stage/player.h" 1




# 1 "include/game/sa1_sa2_shared/player.h" 1




# 1 "include/constants/move_states.h" 1
# 6 "include/game/sa1_sa2_shared/player.h" 2




typedef struct {
              SpriteTransform transform;
              Sprite s;
              Hitbox reserved;
} PlayerSpriteInfo;

extern PlayerSpriteInfo gPlayerLimbsPSI;
extern PlayerSpriteInfo gPlayerBodyPSI;



typedef struct {
               u8 flags;
               s8 unkAD;
               u16 unkAE;
               u16 unkB0;
} SonicFlags;

typedef struct {
               s16 flyingDuration;
               u16 unkAE;
               s8 unkB0;
} CreamFlags;

typedef struct {
               u8 flags;
               s8 shift;
               s8 unkAE;
               s8 unkAF;


               s32 flyingDuration;
} TailsFlags;

typedef struct {
               u8 flags;
               s8 shift;
               s8 unkAE;
} KnucklesFlags;

typedef struct {
               u8 unkAC;
} AmyFlags;
# 89 "include/game/sa1_sa2_shared/player.h"
struct Player_;
typedef void (*PlayerCallback)(struct Player_ *);

typedef struct Player_ {
               PlayerCallback callback;
               u16 unk4;

               s32 qWorldX;
               s32 qWorldY;

               s16 qSpeedAirX;
               s16 qSpeedAirY;
               s16 qSpeedGround;



               s8 spriteOffsetX;
               s8 spriteOffsetY;
               u8 filler18[8];


               u32 moveState;

               u8 rotation;
               u8 unk25;
               s16 spindashAccel;
               u8 unk28;
               u8 unk29;
               s16 unk2A;
               s16 timerInvulnerability;
               s16 timerInvincibility;
               u16 timerSpeedup;
               u16 confusionTimer;
               u16 itemEffect20Timer;
               s8 disableTrickTimer;
               u8 itemEffect;
               u8 layer;
               void *stoodObj;
               s32 maxSpeed;
               s32 topSpeed;
               s32 acceleration;
               s32 deceleration;
               u16 rollingDeceleration;
               u16 boostThreshold;
               u16 walkAnim;
               u16 unk56;
               s16 boostSpeed;
               bool8 isBoosting;
               u8 trickDir;
               u16 heldInput;
               u16 frameInput;
               s8 playerID;
               s8 unk61;
               u8 unk62;
               u8 unk63;
               s16 charState;
               s16 prevCharState;
               AnimId anim;
               u16 variant;
               bool8 unk6C;







               u8 transition;
               u8 unk6E;
               u8 prevTransition;
               bool8 unk70;
               u8 unk71;

               s16 unk72;
               s16 checkPointX;
               s16 checkPointY;
               u32 checkpointTime;
               u16 unk7C;
               u16 unk7E;
               s16 unk80;
               s16 unk82;



               s8 defeatScoreIndex;

               s8 character;
               s8 secondsUntilDrown;
               s8 framesUntilDrownCountDecrement;
               s8 framesUntilWaterSurfaceEffect;
               u8 filler88[3];
               struct Task *spriteTask;
               PlayerSpriteInfo *spriteInfoBody;
               PlayerSpriteInfo *spriteInfoLimbs;
# 192 "include/game/sa1_sa2_shared/player.h"
               s8 unk99[16];
               u8 unk98;




               u8 fillerA9[0x3];






    union {
        SonicFlags sf;
        CreamFlags cf;
        TailsFlags tf;
        KnucklesFlags kf;
        AmyFlags af;
    } w;
} Player;

extern Player gPlayer;
# 6 "include/game/stage/player.h" 2


# 1 "include/constants/characters.h" 1



typedef enum {
    CHARACTER_SONIC,

    CHARACTER_CREAM,

    CHARACTER_TAILS,
    CHARACTER_KNUCKLES,
    CHARACTER_AMY,

    NUM_CHARACTERS
} ECharacters;
# 9 "include/game/stage/player.h" 2
# 1 "include/game/parameters/characters.h" 1



# 1 "include/constants/zones.h" 1
# 5 "include/game/parameters/characters.h" 2
# 10 "include/game/stage/player.h" 2






typedef s32 type8029A28;

void Player_SetMovestate_IsInScriptedSequence(void);
void Player_ClearMovestate_IsInScriptedSequence(void);

void InitializePlayer(Player *p);
void DestroyPlayerTasks(Player *player);
void Player_TransitionCancelFlyingAndBoost(Player *p);
void Player_HandleSpriteYOffsetChange(Player *, s32);
void sub_8023260(Player *);
void sub_80232D0(Player *);
void Player_AirInputControls(Player *);
void Player_TouchGround(Player *p);
void Player_Uncurl(Player *p);
void Player_HandlePhysicsWithAirInput(Player *p);
void sub_8028204(Player *p);
void sub_80282EC(Player *p);
void sub_80283C4(Player *p);
void sub_8029C84(Player *p);
void sub_8029FA4(Player *p);

void Player_DisableInputAndBossTimer(void);
void Player_DisableInputAndBossTimer_FinalBoss(void);


void SetStageSpawnPos(u32 character, u32 level, u32 p2, Player *player);
void CallSetStageSpawnPos(u32 character, u32 level, u32 p2, Player *p);

s32 sub_8029B88(Player *player, u8 *p1, s32 *out);
s32 sub_8029AC0(Player *player, u8 *p1, s32 *out);
s32 sub_8029B0C(Player *player, u8 *p1, s32 *out);

type8029A28 sub_8029A28(Player *player, u8 *p1, type8029A28 *out);
type8029A28 sub_8029A74(Player *player, u8 *p1, type8029A28 *out);

bool32 Player_TryJump(Player *);
bool32 Player_TryAttack(Player *);
# 81 "include/game/stage/player.h"
extern const u16 sCharStateAnimInfo[][2];
extern const AnimId gPlayerCharacterIdleAnims[];
# 9 "include/game/cheese.h" 2

typedef struct {
               s32 unk54;
               s32 unk58;
               s16 unk5C;
               s16 unk5E;
               s32 unk60;
               u8 unk64;
               Sprite *unk68;
} Cheese_UNK54;

typedef struct {
               s32 posX;
               s32 posY;

               u8 unk8;
               u8 unk9;
               u8 unkA;
               u16 unkC;
               s16 unkE;
               u16 unk10;
               s16 unk12;
               u32 unk14;
               struct Task *unk18;


               Sprite s;
               Hitbox reserved;
               Cheese_UNK54 unk54;
               MultiplayerPlayer *mpp;
} Cheese;

extern Cheese *gCheese;

void CreateCheese(Player *);
# 7 "src/game/cheese.c" 2
# 1 "include/game/stage/camera.h" 1






# 1 "include/game/sa1_sa2_shared/camera.h" 1




# 1 "include/tilemap.h" 1
# 6 "include/game/sa1_sa2_shared/camera.h" 2




typedef s32 CamCoord;
# 22 "include/game/sa1_sa2_shared/camera.h"
typedef void (*BgUpdate)(s32, s32);





typedef struct Camera {
                    CamCoord x;
                    CamCoord y;






               s32 unk8;
               s32 unkC;
               s32 unk10;
               s32 unk14;
               s32 shiftX;
               s32 shiftY;
               s32 unk20;
               s32 unk24;




               s32 minY;
               s32 maxY;
               s32 minX;
               s32 maxX;

               s32 dx;
               s32 dy;
               s16 unk40;
               s32 unk44;
               s32 unk48;
               s32 unk4C;



               u16 unk50;

               u16 unk52;
               u16 unk54;
               s16 unk56;
               BgUpdate fnBgUpdate;
               struct Task *movementTask;
               s16 shakeOffsetX;
               s16 shakeOffsetY;
               s16 unk64;
               u8 spectatorTarget;

} Camera;

extern struct Camera gCamera;
# 8 "include/game/stage/camera.h" 2

void InitCamera(u32);
void DestroyCameraMovementTask(void);

extern const u16 gBossCameraYClamps[][2];
# 8 "src/game/cheese.c" 2


# 1 "include/lib/m4a/m4a.h" 1



# 1 "include/lib/m4a/m4a_internal.h" 1



# 1 "include/gba/gba.h" 1
# 5 "include/lib/m4a/m4a_internal.h" 2
# 109 "include/lib/m4a/m4a_internal.h"
struct MP2KTrack;
struct MP2KPlayerState;

typedef void (*MP2KEventNoteFunc)(u8, struct MP2KPlayerState *, struct MP2KTrack *);
typedef void (*MP2KEventFunc)(struct MP2KPlayerState *, struct MP2KTrack *);
typedef void (*CgbSoundFunc)(void);
typedef void (*CgbOscOffFunc)(u8);
typedef u32 (*MidiKeyToCgbFreqFunc)(u8, u8, u8);
typedef void (*ExtVolPitFunc)(void);
typedef void (*MPlayMainFunc)(struct MP2KPlayerState *);

struct MixerSource {
    u8 status;
    u8 type;
    u8 rightVol;
    u8 leftVol;

    union {
        struct {
            u8 attack;
            u8 decay;
            u8 sustain;
            u8 release;
            u8 key;
            u8 envelopeVol;

            u8 envelopeGoal;
            u8 envelopeCtr;

            u8 echoVol;
            u8 echoLen;
            u8 padding1;
            u8 padding2;
            u8 gateTime;
            u8 untransposedKey;
            u8 velocity;
            u8 priority;
            u8 rhythmPan;
            u8 padding3;
            u8 padding4;
            u8 padding5;

            u8 padding6;
            u8 sustainGoal;
            u8 nrx4;
            u8 pan;

            u8 panMask;
            u8 cgbStatus;
            u8 length;
            u8 sweep;

            u32 freq;
        } cgb;
        struct {
            u8 attack;
            u8 decay;
            u8 sustain;
            u8 release;
            u8 key;
            u8 envelopeVol;

            u8 envelopeVolR;
            u8 envelopeVolL;

            u8 echoVol;
            u8 echoLen;
            u8 padding1;
            u8 padding2;
            u8 gateTime;
            u8 untransposedKey;
            u8 velocity;
            u8 priority;
            u8 rhythmPan;
            u8 padding3;
            u8 padding4;
            u8 padding5;

            u32 ct;
            float fw;

            u32 freq;
        } sound;
    } data;

    void *wav;
    void *current;

    struct MP2KTrack *track;
    struct MixerSource *prev;
    struct MixerSource *next;
    u32 padding7;
    u32 blockCount;
};

struct SoundMixerState {


    u32 lockStatus;

    vu8 dmaCounter;


    u8 reverb;
    u8 numChans;
    u8 masterVol;
    u8 freqOption;

    u8 extensionFlags;
    u8 cgbCounter15;
    u8 framesPerDmaCycle;
    u8 maxScanlines;
    u8 gap[3];
    s32 samplesPerFrame;
    s32 sampleRate;



    float sampleRateReciprocal;

    struct MixerSource *cgbChans;
    MPlayMainFunc MPlayMainHead;
    struct MP2KPlayerState *musicPlayerHead;
    CgbSoundFunc CgbSound;
    CgbOscOffFunc CgbOscOff;
    MidiKeyToCgbFreqFunc MidiKeyToCgbFreq;
    void **MPlayJumpTable;
    MP2KEventNoteFunc plynote;
    ExtVolPitFunc ExtVolPit;
    void *reserved2;
    void *reserved3;
    void *reversed4;
    void *reserved5;
    struct MixerSource chans[12];



    float pcmBuffer[4907 * 2];

};

struct MP2KVoiceGroup {
    u8 type;
    u8 drumKey;
    u8 cgbLength;
    u8 pan_sweep;
    union {
        struct {
            struct WaveData *wav;
            u8 attack;
            u8 decay;
            u8 sustain;
            u8 release;
        } sound;
        struct {
            struct MP2KVoiceGroup *group;
            u8 *keySplitTable;
        } keySplit;
    } data;
};

struct WaveData {
    u16 type;
    u16 status;

    u32 freq;
    u32 loopStart;
    u32 size;
    s8 data[1];
};

struct MP2KSongHeader {
    u8 trackCount;
    u8 blockCount;
    u8 priority;
    u8 reverb;
    struct MP2KVoiceGroup *voicegroup;
    u8 *part[1];
};

struct MP2KTrack {
    u8 status;
    u8 wait;
    u8 patternLevel;
    u8 repeatCount;
    u8 gateTime;
    u8 key;
    u8 velocity;
    u8 runningStatus;
    s8 keyShiftCalculated;
    u8 pitchCalculated;
    s8 keyShift;
    s8 keyShiftPublic;
    s8 tune;
    u8 pitchPublic;
    s8 bend;
    u8 bendRange;
    u8 volRightCalculated;
    u8 volLeftCalculated;
    u8 vol;
    u8 volPublic;
    s8 pan;
    s8 panPublic;
    s8 modCalculated;
    u8 modDepth;
    u8 modType;
    u8 lfoSpeed;
    u8 lfoSpeedCounter;
    u8 lfoDelay;
    u8 lfoDelayCounter;
    u8 priority;
    u8 echoVolume;
    u8 echoLength;

    struct MixerSource *chan;
    struct MP2KVoiceGroup voicegroup;

    u8 gap[10];
    u16 unk_3A;
    u32 unk_3C;
    u8 *cmdPtr;
    u8 *patternStack[3];
};

struct MP2KPlayerState {
    struct MP2KSongHeader *songHeader;
    u32 status;
    u8 trackCount;
    u8 priority;
    u8 cmd;
    bool8 checkSongPriority;
    u32 clock;
    u8 padding[8];
    u8 *memAccArea;
    u16 tempoRawBPM;
    u16 tempoScale;
    u16 tempoInterval;
    u16 tempoCounter;
    u16 fadeInterval;
    u16 fadeCounter;
    u16 fadeOV;
    struct MP2KTrack *tracks;
    struct MP2KVoiceGroup *voicegroup;
    u32 lockStatus;
    MPlayMainFunc nextPlayerFunc;
    struct MP2KPlayerState *nextPlayer;
};

struct MusicPlayer {
    struct MP2KPlayerState *info;
    struct MP2KTrack *track;
    u8 numTracks;
    u16 unk_A;
};

struct Song {
    struct MP2KSongHeader *header;
    u16 ms;
    u16 me;
};

typedef void (*XcmdFunc)(struct MP2KPlayerState *, struct MP2KTrack *);

extern char SoundMainRAM[];
extern u8 gMPlayMemAccArea[];
extern void *gMPlayJumpTable[];
extern struct MixerSource gCgbChans[];

extern const struct MusicPlayer gMPlayTable[];
extern const struct Song gSongTable[];
extern const XcmdFunc gXcmdTable[];

extern const u8 gClockTable[];
extern const u8 gScaleTable[];
extern const u32 gFreqTable[];
extern const u16 gPcmSamplesPerVBlankTable[];
extern void *const gMPlayJumpTableTemplate[];

extern const u8 gCgbScaleTable[];
extern const s16 gCgbFreqTable[];
extern const u8 gNoiseTable[];
extern const u8 gCgb3Vol[];






u32 MidiKeyToFreq(struct WaveData *wav, u8 key, u8 fineAdjust);
u32 umul3232H32(u32 multiplier, u32 multiplicand);
void SoundMain(void);
void SoundMainBTM(void *ptr);
void TrackStop(struct MP2KPlayerState *player, struct MP2KTrack *track);
void MP2KPlayerMain(struct MP2KPlayerState *);

void ClearChain(struct MixerSource *chan);
void MP2KClearChain(struct MixerSource *chan);

void MPlayContinue(struct MP2KPlayerState *mplayInfo);
void MPlayStart(struct MP2KPlayerState *mplayInfo, struct MP2KSongHeader *songHeader);
void MPlayStop(struct MP2KPlayerState *mplayInfo);
void FadeOutBody(struct MP2KPlayerState *mplayInfo);
void TrkVolPitSet(struct MP2KPlayerState *mplayInfo, struct MP2KTrack *track);
void MPlayFadeOut(struct MP2KPlayerState *mplayInfo, u16 speed);
void Clear64byte(void *addr);
void SoundInit(struct SoundMixerState *soundInfo);
void MPlayExtender(struct MixerSource *cgbChans);
void m4aSoundMode(u32 mode);
void MPlayOpen(struct MP2KPlayerState *mplayInfo, struct MP2KTrack *tracks, u8 trackCount);
void CgbSound(void);
void CgbOscOff(u8);
void CgbModVol(struct MixerSource *chan);
u32 MidiKeyToCgbFreq(u8, u8, u8);
void MPlayJumpTableCopy(void **mplayJumpTable);
void SampleFreqSet(u32 freq);
void m4aSoundVSyncOn(void);
void m4aSoundVSyncOff(void);

void m4aMPlayTempoControl(struct MP2KPlayerState *mplayInfo, u16 tempo);
void m4aMPlayVolumeControl(struct MP2KPlayerState *mplayInfo, u16 trackBits, u16 volume);
void m4aMPlayPitchControl(struct MP2KPlayerState *mplayInfo, u16 trackBits, s16 pitch);
void m4aMPlayPanpotControl(struct MP2KPlayerState *mplayInfo, u16 trackBits, s8 pan);
void ClearModM(struct MP2KTrack *track);
void m4aMPlayModDepthSet(struct MP2KPlayerState *mplayInfo, u16 trackBits, u8 modDepth);
void m4aMPlayLFOSpeedSet(struct MP2KPlayerState *mplayInfo, u16 trackBits, u8 lfoSpeed);


void MP2K_event_fine(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_goto(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_patt(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_pend(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_rept(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_memacc(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_prio(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_tempo(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_keysh(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_voice(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_vol(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_pan(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_bend(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_bendr(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_lfos(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_lfodl(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_mod(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_modt(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_tune(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_port(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_xcmd(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_endtie(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_nxx(u8 clock, struct MP2KPlayerState *, struct MP2KTrack *);


void MP2K_event_xxx(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_xwave(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_xtype(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_xatta(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_xdeca(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_xsust(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_xrele(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_xiecv(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_xiecl(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_xleng(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_xswee(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_xcmd_0C(struct MP2KPlayerState *, struct MP2KTrack *);
void MP2K_event_xcmd_0D(struct MP2KPlayerState *, struct MP2KTrack *);
# 5 "include/lib/m4a/m4a.h" 2

extern struct SoundMixerState gSoundInfo;

extern struct MP2KPlayerState gMPlayInfo_BGM;
extern struct MP2KPlayerState gMPlayInfo_SE1;
extern struct MP2KPlayerState gMPlayInfo_SE2;
extern struct MP2KPlayerState gMPlayInfo_SE3;

void m4aSoundVSync(void);

void m4aSoundInit(void);
void m4aSoundMain(void);
void m4aSongNumStart(u16);
void m4aSongNumStartOrChange(u16);
void m4aSongNumStartOrContinue(u16);
void m4aSongNumStop(u16 n);
void m4aMPlayAllStop(void);
void m4aMPlayAllContinue(void);
void m4aMPlayContinue(struct MP2KPlayerState *mplayInfo);
void m4aMPlayFadeOut(struct MP2KPlayerState *mplayInfo, u16 speed);
void m4aMPlayFadeOutTemporarily(struct MP2KPlayerState *mplayInfo, u16 speed);
void m4aMPlayFadeIn(struct MP2KPlayerState *mplayInfo, u16 speed);
void m4aMPlayImmInit(struct MP2KPlayerState *mplayInfo);

void m4aMPlayTempoControl(struct MP2KPlayerState *mplayInfo, u16 tempo);
void m4aMPlayVolumeControl(struct MP2KPlayerState *mplayInfo, u16 trackBits, u16 volume);
void m4aMPlayPitchControl(struct MP2KPlayerState *mplayInfo, u16 trackBits, s16 pitch);
void m4aMPlayPanpotControl(struct MP2KPlayerState *mplayInfo, u16 trackBits, s8 pan);
# 11 "src/game/cheese.c" 2



# 1 "include/constants/songs.h" 1
# 15 "src/game/cheese.c" 2
# 1 "include/constants/animations.h" 1



# 1 "include/constants/text.h" 1
# 5 "include/constants/animations.h" 2
# 16 "src/game/cheese.c" 2

typedef struct {
    Sprite s;
    s32 unk30;
    s32 unk34;
    s32 unk38;
    u8 unk3C;
} Cheese_UNK8014BB0;

Cheese *gCheese = 
# 25 "src/game/cheese.c" 3 4
                 ((void *)0)
# 25 "src/game/cheese.c"
                     ;

void sub_801420C(void);
void sub_8015360(struct Task *);

void sub_801555C(void);

void sub_8015500(void);

void sub_80153F8(void);

void sub_8014C60(void);
void sub_8015604(struct Task *);

void sub_8014BB0(Cheese *cheese);
void sub_80155D0(Cheese *);
void sub_80148B8(void);

bool8 sub_8015118(Cheese *);
u8 sub_8014EFC(Cheese *, s16, s16, u8);
void sub_80142AC(void);
void sub_8014350(void);

u8 sub_8014CC8(Cheese *);

void sub_80145D8(void);
void sub_8014A68(void);
void sub_80144CC(void);
void sub_8015378(void);
void sub_8015464(void);
void sub_80154B0(void);
void sub_801464C(void);

void sub_80149EC(void);
void sub_80152EC(void);

const u16 gUnknown_080D5548[][2] = {
    { 0x1C7, 0 }, { 0x1C8, 0 }, { 0x1C9, 0 }, { 0x1C7, 0 }, { 0x1C8, 0 }, { 0x1C9, 0 }, { 0x1C9, 1 }, { 0x1CA, 0 }, { 0x1CB, 0 },
    { 0x1CC, 0 }, { 0x1CC, 1 }, { 0x1CD, 0 }, { 0x1CE, 0 }, { 0x1CF, 0 }, { 0x1CF, 1 }, { 0x1D0, 0 }, { 0x1D1, 0 }, { 0x1D6, 0 },
};

const u8 gUnknown_080D5590[] = {
    0, 9, 10, 10, 0, 0, 0, 0, 0, 0, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 4, 4, 0, 4, 0, 2,
    0, 0, 0, 11, 2, 16, 16, 16, 16, 15, 0, 0, 0, 0, 12, 12, 13, 14, 0, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 8, 8, 8, 8, 5, 5, 5,
    5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
};

const u8 gUnknown_080D5628[] = {
    0, 1, 4, 6, 8, 10, 11, 12, 14, 16, 22, 25, 28, 29, 30, 30, 32, 35, 30, 38, 40, 41, 42, 0, 0, 0,
    0, 0, 43, 46, 47, 49, 52, 54, 56, 57, 58, 0, 62, 64, 0, 0, 0, 66, 0, 0, 0, 0, 68, 71, 73, 76,
    78, 81, 83, 85, 86, 0, 94, 95, 107, 119, 120, 122, 124, 125, 128, 131, 132, 141, 143, 144, 146, 147, 150, 151,
};

void CreateCheese(Player *player)
{

    Cheese *cheese;
    Sprite *s;
    if (((gGameMode == 0) || (gGameMode == 1) || (gGameMode == 2))) {
        struct Task *t;
        if (((gCurrentLevel) == ((7)*(3 + 1)) + (1))) {
            gCheese = 
# 87 "src/game/cheese.c" 3 4
                     ((void *)0)
# 87 "src/game/cheese.c"
                         ;
            return;
        }

        if (player->character != CHARACTER_CREAM) {
            return;
        }

        t = TaskCreate(sub_801420C, sizeof(Cheese), 0x5010, 0, sub_8015360);
        cheese = (void *)((t)->data);
        s = &cheese->s;
        gCheese = cheese;
        cheese->posX = gPlayer.qWorldX;
        cheese->posY = gPlayer.qWorldY;
    } else {
        MultiplayerPlayer *mpp = 
# 102 "src/game/cheese.c" 3 4
                                ((void *)0)
# 102 "src/game/cheese.c"
                                    ;
        u8 i;
        u32 j;
        cheese = 
# 105 "src/game/cheese.c" 3 4
                ((void *)0)
# 105 "src/game/cheese.c"
                    ;
        for (i = 0; i < 4; i++) {
            if (gMultiplayerPlayerTasks[i] == 
# 107 "src/game/cheese.c" 3 4
                                             ((void *)0)
# 107 "src/game/cheese.c"
                                                 ) {
                break;
            }
        }

        for (j = 0; j < i; j++) {
            if (gMultiplayerCharacters[j] == CHARACTER_CREAM) {
                struct Task *t;
                mpp = (void *)((gMultiplayerPlayerTasks[j])->data);
                t = TaskCreate(sub_801420C, sizeof(Cheese), 0x5010, 0, sub_8015360);
                cheese = (void *)((t)->data);
                cheese->mpp = mpp;
                break;
            }
        }

        if (mpp == 
# 123 "src/game/cheese.c" 3 4
                  ((void *)0)
# 123 "src/game/cheese.c"
                      ) {
            return;
        }

        s = &cheese->s;
        gCheese = cheese;
        cheese->posX = 0;
        cheese->posY = 0;
    }

    cheese->unk8 = 2;
    cheese->unk9 = 2;
    cheese->unkC = 2;
    cheese->unkE = 0;
    cheese->unk10 = 0;
    s->graphics.dest = VramMalloc(9);
    s->graphics.anim = gUnknown_080D5548[cheese->unk10][0];
    s->variant = gUnknown_080D5548[cheese->unk10][1];
    s->graphics.size = 0;
    s->prevVariant = -1;
    s->oamFlags = ((17) << 6);
    s->frameFlags = ((2) << (12));
    s->qAnimDelay = 0;

    s->animSpeed = ((int)((float)(1.0)*0x10));
    s->palId = 0;
    s->hitboxes[0].index = -1;
    s->hitboxes[0].index = -1;
    s->hitboxes[1].index = -1;
}

void sub_801412C(Cheese *cheese)
{
    Sprite *s = &cheese->s;
    Cheese_UNK54 *unk54 = &cheese->unk54;
    u32 temp;
    if (cheese->unk10 != 18 && cheese->unk14 != gUnknown_080D5548[cheese->unk10][0] + gUnknown_080D5548[cheese->unk10][1]) {
        s->graphics.anim = gUnknown_080D5548[cheese->unk10][0];
        s->variant = gUnknown_080D5548[cheese->unk10][1];
        cheese->unk14 = s->graphics.anim + s->variant;
        s->prevVariant = -1;
        s->hitboxes[0].index = -1;
        s->hitboxes[1].index = -1;
    }

    s->x = ((int)((cheese->posX) >> 8)) - gCamera.x;
    s->y = ((int)((cheese->posY) >> 8)) - gCamera.y;

    temp = 0x400;
    if (cheese->unkC & 1) {
        temp = 0;
    }

    if ((u8)(unk54->unk64 + 0x40) > 0x80) {
        temp ^= 0x800;
    }

    if (cheese->unkC & 8) {
        temp ^= 0x800;
    }

    s->frameFlags = (temp | (s->frameFlags & ~(((1) << (10)) | ((1) << (11))))) & ~((3) << (12));
    s->frameFlags |= (unk54->unk68->frameFlags) & ((3) << (12));
    UpdateSpriteAnimation(s);
    if (!(cheese->unkC & 2)) {
        DisplaySprite(s);
    }
}

void sub_801420C(void)
{
    struct Task **t = &gCurTask;
    Cheese *cheese = (void *)((*t)->data);
    Cheese_UNK54 *unk54 = &cheese->unk54;

    sub_8015118(cheese);
    sub_8014EFC(cheese, 0, 0x18, 0);

    if (unk54->unk68->graphics.anim == 0x79 && unk54->unk68->variant == 0) {
        sub_8014EFC(cheese, 0, 0, 0);
        cheese->unkA = 0;
        (*t)->main = sub_80142AC;
    } else {
        (*t)->main = sub_8014350;
    }

    sub_801412C(cheese);

    if (((((gCurrentLevel) & ((3 + 1) - 1)) == 2) || (((gCurrentLevel) == ((7)*(3 + 1)) + (0)) && !gFinalBossActive) || (((gCurrentLevel) == ((7)*(3 + 1)) + (1))))) {
        gCurTask->main = sub_8014350;
    }
}

void sub_80142AC(void)
{
    Cheese *cheese = (void *)((gCurTask)->data);
    Cheese_UNK54 *unk54 = &cheese->unk54;
    sub_8015118(cheese);
    sub_8014EFC(cheese, 0, 0, 0);

    cheese->unkC &= ~0x1;

    if (unk54->unk68->animCursor > 0xB6) {
        cheese->unkA = 1;
    }

    if ((cheese->unkA == 0 && unk54->unk68->variant != 0)) {
        sub_8014EFC(cheese, -0x20, 0x10, 0);
        gCurTask->main = sub_8014350;
    } else if (cheese->unkA != 0 && unk54->unk68->graphics.anim != 0x79) {
        sub_8014EFC(cheese, -0x20, 0x10, 0);
        gCurTask->main = sub_8014350;
    }

    cheese->unk10 = 15;
    if (unk54->unk60 & 0x100000) {
        cheese->unkC |= 2;
    } else {
        cheese->unkC &= ~0x2;
    }

    sub_801412C(cheese);
}

void sub_8014350(void)
{
    Cheese *cheese = (void *)((gCurTask)->data);
    Cheese_UNK54 *unk54 = &cheese->unk54;

    if (sub_8015118(cheese) == 1) {
        sub_8014EFC(cheese, 0x20, 0x20, 0);
        return;
    }

    sub_8014CC8(cheese);

    if (unk54->unk68->graphics.anim < 0xB6) {
        cheese->unk10 = gUnknown_080D5590[gUnknown_080D5628[unk54->unk68->graphics.anim - 0x5b] + unk54->unk68->variant];
    }

    if (unk54->unk60 & 0x100000) {
        cheese->unkC |= 2;
    } else {
        cheese->unkC &= ~0x2;
    }

    switch (cheese->unk10) {
        case 11:
            gCurTask->main = sub_8015378;
            break;

        case 12:
            cheese->unk10 = 0;
            gCurTask->main = sub_8015464;
            break;

        case 13:
            cheese->unkA = 0;
            gCurTask->main = sub_80154B0;
            cheese->unk10 = 0;
            sub_801412C(cheese);
            return;

        case 4:
            cheese->unkA = 0;
            m4aSongNumStart(228);
            gCurTask->main = sub_8014A68;
            break;

        case 2:
            gCurTask->main = sub_80145D8;
            break;

        case 15:
            cheese->unkA = 0;
            gCurTask->main = sub_80142AC;
            break;

        case 9:
            cheese->unk10 = 9;
            cheese->unkA = 0;
            gCurTask->main = sub_80144CC;
            break;
    }
    sub_801412C(cheese);
}

void sub_80144CC(void)
{
    u8 temp;
    Cheese *cheese = (void *)((gCurTask)->data);
    Cheese_UNK54 *unk54 = &cheese->unk54;

    if (sub_8015118(cheese) == 1) {
        sub_8014EFC(cheese, 0x20, 0x20, 0);
        return;
    }

    if (unk54->unk68->animCursor >= 0xB0) {
        cheese->unk10 = 10;
        if (unk54->unk68->animCursor >= 0x100) {
            sub_8014EFC(cheese, 0x1C, 4, 4);

            if (unk54->unk60 & 1) {
                cheese->unkC |= 1;
            } else {
                cheese->unkC &= ~1;
            }
        } else {
            if (unk54->unk68->animCursor > 0xBF) {
                sub_8014EFC(cheese, -28, 4, 4);

                if (unk54->unk60 & 1) {
                    cheese->unkC &= ~1;
                } else {
                    cheese->unkC |= 1;
                }
            }
        }
        cheese->unkA += 2;
        cheese->posY += ((gSineTable[(cheese->unkA * 4)]) >> 9);
    } else {
        cheese->unk10 = 9;
    }

    temp = 10;
    if (unk54->unk68->graphics.anim < 0xB6) {
        temp = gUnknown_080D5590[gUnknown_080D5628[unk54->unk68->graphics.anim - 0x5B] + unk54->unk68->variant];
    }

    if (temp != 9) {
        gCurTask->main = sub_8014350;
    }
    sub_801412C(cheese);
}

void sub_80145D8(void)
{
    Cheese *cheese = (void *)((gCurTask)->data);
    sub_8015118(cheese);
    cheese->unk10 = 0;

    if (gCheeseTarget.squarePlayerDistance < ((200) * (200))) {
        cheese->unk18 = gCheeseTarget.task;

        gCheeseTarget.task->unk15 = 1;
        cheese->unkA = 0;
        m4aSongNumStart(229);
        gCurTask->main = sub_801464C;
        cheese->unkC |= 0x10;
    } else {
        cheese->unkA = 0;
        gCurTask->main = sub_80149EC;
    }

    sub_80152EC();
    sub_801412C(cheese);
}

void sub_801464C(void)
{
    Cheese *cheese = (void *)((gCurTask)->data);
    struct Task *t = cheese->unk18;
    Cheese_UNK54 *unk54 = &cheese->unk54;
    u32 temp5;
    s32 r0;

    s32 temp1 = 3;
    s32 temp2 = 0xC;
    s32 temp3 = 0;
    s32 temp4 = 0;

    if (((((gCurrentLevel) & ((3 + 1) - 1)) == 2) || (((gCurrentLevel) == ((7)*(3 + 1)) + (0)) && !gFinalBossActive) || (((gCurrentLevel) == ((7)*(3 + 1)) + (1))))) {
        sub_80155D0(cheese);
        temp1 = 2;
        temp2 = 0x20;
    }

    if (cheese->unkC & 0x10 && unk54->unk68->graphics.anim != 0x69 && unk54->unk68->graphics.anim != 0x6D
        && unk54->unk68->graphics.anim != 0x71) {
        cheese->unkC &= ~0x10;
    }

    cheese->unk10 = 5;
    if (cheese->unkA != 0) {
        cheese->unk10 = 6;
        cheese->unkA++;
    }

    if (cheese->unkA > 8) {
        cheese->unkA = 0;
        cheese->unkE = 0;
        gCurTask->main = sub_80148B8;
    }


    if (t->unk16 - ((int)((cheese->posX) >> 8)) >= 0) {
        if (t->unk16 - ((int)((cheese->posX) >> 8)) < temp2) {
            goto lab2;
        }
    } else if (((int)((cheese->posX) >> 8)) - t->unk16 < temp2) {
        s32 temp;
    lab2:
        temp = t->unk18 - ({ ((int)((cheese->posY) >> 8)) + 4; });

        if (temp < 0) {
            r0 = ({ ((int)((cheese->posY) >> 8)) + 4; }) - t->unk18;
        } else {
            if (temp < temp2) {
                goto lab;
            }
            goto end;
        }

        if (r0 < temp2) {
        lab:
            if (cheese->unkA == 0) {
                cheese->unkA = 1;
            }
            cheese->unk10 = 6;
        }
    }
end:

    temp5 = ((s32)((t->unk16) << 8)) - cheese->posX > -1 ? ((s32)((t->unk16)*256)) - cheese->posX : cheese->posX - ((s32)((t->unk16) << 8));

    if (((s32)((t->unk16) << 8)) > cheese->posX) {
        temp3 = temp5 >> temp1;
        if (temp3 == 0 && temp5 != 0) {
            temp3 = 0x200;
        }

    } else {
        if (((s32)((t->unk16) << 8)) < cheese->posX) {
            temp3 = -(temp5 >> temp1);
            if (temp3 == 0 && temp5 != 0) {
                temp3 = -512;
            }
        }
    }

    temp5 = ((s32)((t->unk18 - 4) << 8)) - cheese->posY > -1 ? ((s32)((t->unk18 - 4) << 8)) - cheese->posY : cheese->posY - ((s32)((t->unk18 - 4) << 8));

    if (((s32)((t->unk18 - 4) << 8)) > cheese->posY) {
        temp4 = temp5 >> temp1;
        if (temp4 == 0 && temp5 != 0) {
            temp4 = 0x200;
        }
    } else {
        if (((s32)((t->unk18 - 4)*256)) < cheese->posY) {
            temp4 = -(temp5 >> temp1);
            if (temp4 == 0 && temp5 != 0) {
                temp4 = -512;
            }
        }
    }

    r0 = -4095;
    if (temp3 < -0xFFF) {
        temp3 = r0;
    } else {
        r0 = 0xFFF;
        if (temp3 > 0xFFF) {
            temp3 = r0;
        }
    }

    r0 = -4095;
    if (temp4 < -0xFFF) {
        temp4 = r0;
    } else {
        r0 = 0xFFF;
        if (temp4 > 0xFFF) {
            temp4 = r0;
        }
    }

    cheese->posX += temp3;
    cheese->posY += temp4;

    if (t->unk15 == 0) {
        cheese->unkA = 0;
        cheese->unkE = 0;
        gCurTask->main = sub_80148B8;
    }
    sub_80152EC();
    sub_801412C(cheese);
}

void sub_8014834(void)
{
    Cheese *cheese = (void *)((gCurTask)->data);
    struct Task *t = cheese->unk18;
    Cheese_UNK54 *unk54 = &cheese->unk54;
    if (cheese->unkC & 0x10 && unk54->unk68->graphics.anim != 0x69 && unk54->unk68->graphics.anim != 0x6D
        && unk54->unk68->graphics.anim != 0x71) {
        cheese->unkC &= ~0x10;
    }

    cheese->unk10 = 6;
    if (cheese->unkA++ > 8) {
        gCurTask->main = sub_80148B8;
        cheese->unkA = 0;
        cheese->unkE = 0;
    }

    if (t->unk15 == 0) {
        gCurTask->main = sub_80148B8;
        cheese->unkA = 0;
        cheese->unkE = 0;
    }

    sub_80152EC();
    sub_801412C(cheese);
}

void sub_80148B8(void)
{
    Cheese *cheese = (void *)((gCurTask)->data);
    Cheese_UNK54 *unk54 = &cheese->unk54;

    u8 temp0 = 0;
    u8 temp1 = 3;

    if (((((gCurrentLevel) & ((3 + 1) - 1)) == 2) || (((gCurrentLevel) == ((7)*(3 + 1)) + (0)) && !gFinalBossActive) || (((gCurrentLevel) == ((7)*(3 + 1)) + (1))))) {
        temp1 = 1;
    }

    if (cheese->unkC & 0x10 && unk54->unk68->graphics.anim != 0x69 && unk54->unk68->graphics.anim != 0x6D
        && unk54->unk68->graphics.anim != 0x71) {
        cheese->unkC &= ~0x10;
    }

    sub_8015118(cheese);

    if (sub_8014EFC(cheese, 0x20, 0x20, temp1) == 1) {
        if (unk54->unk68->graphics.anim < 0xB6) {
            cheese->unk10 = gUnknown_080D5590[gUnknown_080D5628[unk54->unk68->graphics.anim - 0x5b] + unk54->unk68->variant];
        }

        if (cheese->unkE > 0x3C && cheese->unk10 != 2) {
            cheese->unkA = 0;
            gCurTask->main = sub_8014350;
        }
    }


    cheese->unk10 = 0;

    if (unk54->unk68->graphics.anim < 0xB6) {
        temp0 = gUnknown_080D5590[gUnknown_080D5628[unk54->unk68->graphics.anim - 0x5b] + unk54->unk68->variant];
    }

    if (!(cheese->unkC & 0x10)) {
        if (temp0 == 2) {
            cheese->unkA = 8;
        }
        if (cheese->unkA != 0) {
            cheese->unk10 = 0x10;
            cheese->unkA--;
        }
    }

    if (cheese->unkE > 0x78) {
        cheese->unkA = 0;
        gCurTask->main = sub_8014350;
    }

    cheese->unkE++;

    sub_80152EC();
    sub_801412C(cheese);
}

void sub_80149EC(void)
{
    Cheese *cheese = (void *)((gCurTask)->data);
    Cheese_UNK54 *unk54 = &cheese->unk54;

    cheese->unk10 = 7;
    if (cheese->unkA++ > 0x3C) {
        if (unk54->unk68->graphics.anim < 0xB6) {
            cheese->unk10 = gUnknown_080D5590[gUnknown_080D5628[unk54->unk68->graphics.anim - 0x5b] + unk54->unk68->variant];
        }
        if (cheese->unk10 != 7) {
            gCurTask->main = sub_8014350;
        }
    }

    sub_8015118(cheese);
    sub_8014CC8(cheese);
    sub_80152EC();
    sub_801412C(cheese);
}

void sub_8014A68(void)
{
    Cheese *cheese = (void *)((gCurTask)->data);
    Cheese_UNK54 *unk54 = &cheese->unk54;
    s16 cos, sin;
    sub_8015118(cheese);

    cos = (gSineTable[(cheese->unkA * 4) + 256]) >> 9;
    sin = (gSineTable[(cheese->unkA * 4)]) >> 9;

    cheese->unkA += 0x10;

    sub_8014EFC(cheese, cos, sin, 0);

    if (unk54->unk68->graphics.anim < 0xB6) {
        cheese->unk10 = gUnknown_080D5590[gUnknown_080D5628[unk54->unk68->graphics.anim - 0x5b] + unk54->unk68->variant];
    }

    if (cheese->unk10 != 4) {
        m4aSongNumStop(228);
        gCurTask->main = sub_8014350;
    }
    sub_801412C(cheese);
}

void sub_8014AFC(void)
{
    Cheese *cheese = (void *)((gCurTask)->data);
    Cheese_UNK54 *unk54 = &cheese->unk54;
    s16 cos, sin;
    s16 cursor;
    sub_8015118(cheese);

    cos = (gSineTable[(cheese->unkA * 4) + 256]) >> 9;
    sin = (gSineTable[(cheese->unkA * 4)]) >> 11;

    cheese->unkA += 2;

    sub_8014EFC(cheese, cos, sin + 0x30, 0);

    if (unk54->unk68->graphics.anim < 0xB6) {
        cheese->unk10 = gUnknown_080D5590[gUnknown_080D5628[unk54->unk68->graphics.anim - 0x5b] + unk54->unk68->variant];
    }

    if (cheese->unk10 != 0xC) {
        gCurTask->main = sub_8014350;
    }

    cursor = cheese->s.animCursor;

    sub_801412C(cheese);
    if (cheese->s.animCursor == 0x3F && cursor != 0x3F) {
        sub_8014BB0(cheese);
    }

    if (cheese->s.animCursor == 0x12 && cursor != 0x12) {
        sub_8014BB0(cheese);
    }
}

void sub_8014BB0(Cheese *cheese)
{
    struct Task *t = TaskCreate(sub_8014C60, sizeof(Cheese_UNK8014BB0), 0x5040, 0, sub_8015604);
    Cheese_UNK8014BB0 *unk4BB0 = (void *)((t)->data);

    unk4BB0->unk3C = 0;

    if (cheese->s.animCursor == 0x12) {
        unk4BB0->unk30 = -64;
    } else {
        unk4BB0->unk30 = 0x40;
    }

    unk4BB0->unk34 = cheese->posX;
    unk4BB0->unk38 = cheese->posY;

    unk4BB0->s.graphics.dest = VramMalloc(4);
    unk4BB0->s.graphics.anim = 469;
    unk4BB0->s.variant = 0;
    unk4BB0->s.graphics.size = 0;
    unk4BB0->s.prevVariant = -1;
    unk4BB0->s.x = ((int)((unk4BB0->unk34) >> 8)) - gCamera.x;
    unk4BB0->s.y = ((int)((unk4BB0->unk38) >> 8)) - gCamera.y;
    unk4BB0->s.oamFlags = ((8) << 6);
    unk4BB0->s.frameFlags = ((2) << (12));
    unk4BB0->s.qAnimDelay = 0;

    unk4BB0->s.animSpeed = ((int)((float)(1.0)*0x10));
    unk4BB0->s.palId = 0;
}

void sub_8014C60(void)
{
    Cheese_UNK8014BB0 *unk4BB0 = (void *)((gCurTask)->data);
    Sprite *s = &unk4BB0->s;
    if (unk4BB0->unk3C++ > 0x20) {
        TaskDestroy(gCurTask);
        return;
    }

    unk4BB0->unk34 += unk4BB0->unk30;
    unk4BB0->unk38 += 0x100;
    s->x = ((int)((unk4BB0->unk34) >> 8)) - gCamera.x;
    s->y = ((int)((unk4BB0->unk38) >> 8)) - gCamera.y;
    UpdateSpriteAnimation(s);
    DisplaySprite(s);
}

u8 sub_8014CC8(Cheese *cheese)
{
    Cheese_UNK54 *unk54 = &cheese->unk54;
    u8 temp;
    u32 temp2;
    s32 sin, cos;
    s32 r0, temp3, temp4, temp5;
    u8 ret;

    temp3 = 0;
    temp4 = 0;

    if (((((gCurrentLevel) & ((3 + 1) - 1)) == 2) || (((gCurrentLevel) == ((7)*(3 + 1)) + (0)) && !gFinalBossActive) || (((gCurrentLevel) == ((7)*(3 + 1)) + (1))))) {
        sub_80155D0(cheese);
    }

    temp = unk54->unk64 + 0xA0;

    if (cheese->unkC & 8) {
        if (unk54->unk64 == 0) {
            temp = (0x9F - unk54->unk64);
            temp -= 128;
        } else {
            temp = (0x9F - unk54->unk64);
            temp -= 128;
        }

        if (unk54->unk60 & 1) {
            cheese->unkC |= 1;
        } else {
            cheese->unkC &= ~1;
            temp += 0x40;
        }

    } else {
        if (unk54->unk60 & 1) {
            temp += 0x40;
            if (unk54->unk64 + 0x40 > 0x80) {
                cheese->unkC &= ~1;
            } else {
                cheese->unkC |= 1;
            }
        } else {
            if (unk54->unk64 + 0x40 > 0x80) {
                cheese->unkC |= 1;
            } else {
                cheese->unkC &= ~1;
            }
        }
    }

    cos = (((gSineTable[(temp * 4) + 256]) >> 6) * 0x20) + unk54->unk54;
    sin = (((gSineTable[(temp * 4)]) >> 6) * 0x20) + unk54->unk58;

    if (cheese->unk8 != 2) {
        temp2 = unk54->unk54 - cheese->posX > -1 ? unk54->unk54 - cheese->posX : cheese->posX - unk54->unk54;
        if (temp2 > 0x5000) {
            cheese->unk8 = 2;
        } else {
            if (temp2 > 0x3000) {
                cheese->unk8 = 3;
            } else {
                cheese->unk8 = 4;
            }
        }
    }

    temp2 = cos - cheese->posX > -1 ? cos - cheese->posX : cheese->posX - cos;
    if (temp2 < 0x400) {
        cheese->unk8 = 4;
    }

    if (cos > cheese->posX) {
        temp3 = (temp2 >> cheese->unk8);
        if (temp3 > 0x100) {
            cheese->unkC &= ~1;
        }
    } else {
        if (cos < cheese->posX) {
            temp3 = -(temp2 >> cheese->unk8);
            if (temp3 < -0x100) {
                cheese->unkC |= 1;
            }
        }
    }

    if (cheese->unk9 != 2) {
        temp2 = unk54->unk58 - cheese->posY > -1 ? unk54->unk58 - cheese->posY : cheese->posY - unk54->unk58;

        if (temp2 > 0x5000) {
            cheese->unk9 = 2;
        } else {
            if (temp2 > 0x3000) {
                cheese->unk9 = 3;
            } else {
                cheese->unk9 = 4;
            }
        }
    }

    temp2 = sin - cheese->posY > -1 ? sin - cheese->posY : cheese->posY - sin;
    if (temp2 < 0x400) {
        cheese->unk9 = 4;
        ret = 1;
    } else {
        ret = 0;
    }

    if (sin > cheese->posY) {
        temp4 = temp2 >> cheese->unk9;
    } else if (sin < cheese->posY) {
        temp4 = -(temp2 >> cheese->unk9);
    }

    r0 = -4095;
    if (temp3 < -0xFFF) {
        temp3 = r0;
    } else {
        r0 = 0xFFF;
        if (temp3 > 0xFFF) {
            temp3 = r0;
        }
    }

    r0 = -4095;
    if (temp4 < -0xFFF) {
        temp4 = r0;
    } else {
        r0 = 0xFFF;
        if (temp4 > 0xFFF) {
            temp4 = r0;
        }
    }

    cheese->posX += temp3;
    cheese->posY += temp4;

    return ret;
}

u8 sub_8014EFC(Cheese *cheese, s16 x, s16 y, u8 p4)
{
    Cheese_UNK54 *unk54 = &cheese->unk54;
    u8 temp;
    u32 temp2;
    s32 sin, cos;
    s32 r0, temp3, temp4;
    u8 ret;

    temp3 = 0;
    temp4 = 0;
    ret = 0;

    if (((((gCurrentLevel) & ((3 + 1) - 1)) == 2) || (((gCurrentLevel) == ((7)*(3 + 1)) + (0)) && !gFinalBossActive) || (((gCurrentLevel) == ((7)*(3 + 1)) + (1))))) {
        sub_80155D0(cheese);
    }

    temp = unk54->unk64 + 0xA0;

    if (cheese->unkC & 8) {
        if (unk54->unk64 == 0) {
            temp = (0x9F - unk54->unk64);
            temp -= 128;
        } else {
            temp = (0x9F - unk54->unk64);
            temp -= 128;
        }

        if (unk54->unk60 & 1) {
            cheese->unkC |= 1;
        } else {
            cheese->unkC &= ~1;
            temp += 0x40;
        }

    } else {
        if (unk54->unk60 & 1) {
            temp += 0x40;
            if (unk54->unk64 + 0x40 > 0x80) {
                cheese->unkC &= ~1;
            } else {
                cheese->unkC |= 1;
            }
        } else {
            if (unk54->unk64 + 0x40 > 0x80) {
                cheese->unkC |= 1;
            } else {
                cheese->unkC &= ~1;
            }
        }
    }
    do {
        cos = (((gSineTable[(temp * 4) + 256]) >> 6) * x) + unk54->unk54;
    } while (0);
    sin = (((gSineTable[(temp * 4)]) >> 6) * y) + unk54->unk58;

    if (p4 == 0) {
        cheese->posX = cos;
        cheese->posY = sin;
        return 1;
    }
    if ((cos - cheese->posX > -1 ? cos - cheese->posX : cheese->posX - cos) < 0x600) {
        if ((sin - cheese->posY > -1 ? sin - cheese->posY : cheese->posY - sin) < 0x600) {
            ret = 1;
        }
    }

    temp2 = cos - cheese->posX > -1 ? cos - cheese->posX : cheese->posX - cos;

    if (cos > cheese->posX) {
        temp3 = (temp2 >> p4);
        if (temp3 != 0) {
            cheese->unkC &= ~1;
        }
    } else {
        if (cos < cheese->posX) {
            temp3 = -(temp2 >> p4);
            if (temp3 != 0) {
                cheese->unkC |= 1;
            }
        }
    }

    temp2 = sin - cheese->posY > -1 ? sin - cheese->posY : cheese->posY - sin;
    if (sin > cheese->posY) {
        temp4 = temp2 >> p4;
    } else if (sin < cheese->posY) {
        temp4 = -(temp2 >> p4);
    }

    r0 = -4095;
    if (temp3 < -0xFFF) {
        temp3 = r0;
    } else {
        r0 = 0xFFF;
        if (temp3 > 0xFFF) {
            temp3 = r0;
        }
    }

    r0 = -4095;
    if (temp4 < -0xFFF) {
        temp4 = r0;
    } else {
        r0 = 0xFFF;
        if (temp4 > 0xFFF) {
            temp4 = r0;
        }
    }

    cheese->posX += temp3;
    cheese->posY += temp4;

    return ret;
}

bool8 sub_8015118(Cheese *cheese)
{
    Cheese_UNK54 *unk54 = &cheese->unk54;

    if ((u8)(gGameMode - 3) < 2) {
        bool8 r7 = 0;
        bool8 thing = 0;

        s32 temp, temp2;
        s16 x, y;

        if (((cheese->mpp->pos.x - ((int)((unk54->unk54) >> 8))) >= 0 ? (cheese->mpp->pos.x - ((int)((unk54->unk54) >> 8))) : -(cheese->mpp->pos.x - ((int)((unk54->unk54) >> 8)))) > 0x1E) {
            r7 = 1;
        }

        if (((cheese->mpp->pos.y - ((int)((unk54->unk58) >> 8))) >= 0 ? (cheese->mpp->pos.y - ((int)((unk54->unk58) >> 8))) : -(cheese->mpp->pos.y - ((int)((unk54->unk58) >> 8)))) > 0x1E) {
            r7 = 1;
        }

        unk54->unk54 = ((s32)((cheese->mpp->pos.x) << 8));
        unk54->unk58 = ((s32)((cheese->mpp->pos.y) << 8));

        x = cheese->mpp->pos.x - gCamera.x;
        if ((u16)(x + 32) > 304) {
            return 1;
        }

        y = cheese->mpp->pos.y - gCamera.y;
        if ((u16)(y + 32) > 224) {
            return 1;
        }

        unk54->unk5C = 1;
        unk54->unk5E = 1;
        unk54->unk68 = &cheese->mpp->s;
        unk54->unk60 = 0;

        if (!(cheese->mpp->unk54 & 2)) {
            unk54->unk60 = 1;
        }

        if (cheese->mpp->unk54 & 0x40) {
            unk54->unk60 |= 0x100000;
        }

        if (gSelectedCharacter == CHARACTER_CREAM && gPlayer.moveState & 0x00400000) {
            thing = 1;
        }

        if (!thing) {
            unk54->unk64 = cheese->mpp->transform.rotation >> 2;

            if (cheese->mpp->unk54 & 8) {
                if (unk54->unk64) {
                    unk54->unk64 = ~(unk54->unk64 + 0x80U);
                }
                cheese->unkC |= 8;
            } else {
                cheese->unkC &= ~8;
            }
        }

        if (r7) {
            sub_8014EFC(cheese, 0, 0x10, 0);
        }
    } else {
        unk54->unk54 = gPlayer.qWorldX;
        unk54->unk58 = gPlayer.qWorldY;
        unk54->unk5C = gPlayer.qSpeedAirX;
        unk54->unk5E = gPlayer.qSpeedAirY;
        unk54->unk68 = &gPlayer.spriteInfoBody->s;
        unk54->unk60 = gPlayer.moveState;

        if (!(gPlayer.moveState & 0x00400000)) {
            unk54->unk64 = gPlayer.rotation;
            if (gPlayer.moveState & 0x00000002) {
                unk54->unk64 = 0;
            }

            if (gStageFlags & 0x80) {
                cheese->unkC |= 8;
            } else {
                cheese->unkC &= ~8;
            }
        }
    }

    return 0;
}

void sub_80152EC(void)
{
    Cheese *cheese = (void *)((gCurTask)->data);
    Cheese_UNK54 *unk54 = &cheese->unk54;
    if (unk54->unk68->graphics.anim < 182
        && gUnknown_080D5590[gUnknown_080D5628[unk54->unk68->graphics.anim - 0x5b] + unk54->unk68->variant] == 4) {
        cheese->unkA = 0;
        cheese->unkE = 0;
        gCheeseTarget.task->unk15 = 0;
        cheese->unkC &= ~0x10;
        m4aSongNumStart(228);
        gCurTask->main = sub_8014A68;
    }
}

void sub_8015360(struct Task *t)
{
    Cheese *cheese = (void *)((t)->data);
    Sprite *s = &cheese->s;
    VramFree(s->graphics.dest);
}

void sub_8015378(void)
{
    Cheese *cheese = (void *)((gCurTask)->data);
    Cheese_UNK54 *unk54 = &cheese->unk54;
    sub_8015118(cheese);
    if ((sub_8014EFC(cheese, 8, 0xf, 1) & 0xFF) == 1) {
        gCurTask->main = sub_80153F8;
    }

    if (unk54->unk68->graphics.anim < 182) {
        cheese->unk10 = gUnknown_080D5590[gUnknown_080D5628[unk54->unk68->graphics.anim - 0x5b] + unk54->unk68->variant];
    }

    if (cheese->unk10 != 11) {
        gCurTask->main = sub_8014350;
    }

    sub_801412C(cheese);
}

void sub_80153F8(void)
{
    Cheese *cheese = (void *)((gCurTask)->data);
    Cheese_UNK54 *unk54 = &cheese->unk54;
    sub_8015118(cheese);
    sub_8014EFC(cheese, 8, 0xf, 0);

    if (unk54->unk68->graphics.anim < 182) {
        cheese->unk10 = gUnknown_080D5590[gUnknown_080D5628[unk54->unk68->graphics.anim - 0x5b] + unk54->unk68->variant];
    }

    if (cheese->unk10 != 11) {
        gCurTask->main = sub_8014350;
    }

    sub_801412C(cheese);
}

void sub_8015464(void)
{
    Cheese *cheese = (void *)((gCurTask)->data);
    sub_8015118(cheese);
    if (sub_8014EFC(cheese, 0x20, 0x30, 3) == 1) {
        cheese->unkA = 0;
        gCurTask->main = sub_8014AFC;
    }
    cheese->unk10 = 0;
    sub_801412C(cheese);
}

void sub_80154B0(void)
{
    Cheese *cheese = (void *)((gCurTask)->data);
    sub_8015118(cheese);
    sub_8014EFC(cheese, 0, 0x30, 4);
    if (cheese->unkA == 60) {
        cheese->unkA = 0;
        gCurTask->main = sub_8015500;
    }
    cheese->unkA++;
    cheese->unk10 = 0;
    sub_801412C(cheese);
}

void sub_8015500(void)
{
    Cheese *cheese = (void *)((gCurTask)->data);
    Player *player = &gPlayer;
    sub_8015118(cheese);
    sub_8014EFC(cheese, 0, -2, 0);
    if (cheese->unkA == 8) {
        gCurTask->main = sub_801555C;
        player->variant = 1;
    }
    cheese->unkA++;
    cheese->unk10 = 13;
    sub_801412C(cheese);
}

void sub_801555C(void)
{
    Cheese *cheese = (void *)((gCurTask)->data);
    Cheese_UNK54 *unk54 = &cheese->unk54;
    sub_8015118(cheese);
    sub_8014EFC(cheese, 0, -2, 0);
    cheese->unk10 = 14;

    if (unk54->unk68->graphics.anim < 182) {
        cheese->unk10 = gUnknown_080D5590[gUnknown_080D5628[unk54->unk68->graphics.anim - 0x5b] + unk54->unk68->variant];
    }

    if (cheese->unk10 != 0xE) {
        gCurTask->main = sub_8014350;
    }

    sub_801412C(cheese);
}

void sub_80155D0(Cheese *cheese)
{
    Cheese_UNK54 *unk54 = &cheese->unk54;
    if (!(cheese->unkC & 4) && !(unk54->unk60 & 0x100000)) {
        cheese->posX = unk54->unk54;
        cheese->posY = unk54->unk58;
        cheese->unkC |= 4;
    }
}

void sub_8015604(struct Task *t)
{
    Cheese_UNK8014BB0 *unk4BB0 = (void *)((t)->data);
    Sprite *s = &unk4BB0->s;
    VramFree(s->graphics.dest);
}

void sub_8015618(void) { }
