class CardImage {
  final String image;
  final String label;

  CardImage({required this.image, required this.label});
}

final List<CardImage> images = [
  CardImage(
      image:
          'https://images.unsplash.com/photo-1619903774373-7dea6886db8e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=774&q=80',
      label: 'Natureza'),
  CardImage(
      image:
          'https://images.unsplash.com/photo-1627844718641-f3bda7d6050b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=411&q=80',
      label: 'Natureza'),
  CardImage(
    label: 'Natureza',
    image:
        'https://images.unsplash.com/photo-1627844718641-f3bda7d6050b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=411&q=80',
  ),
  CardImage(
    label: 'Natureza',
    image:
        'https://images.unsplash.com/photo-1633413788319-77c6dfe3c2f6?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=386&q=80',
  ),
  CardImage(
    label: 'Natureza',
    image:
        'https://images.unsplash.com/photo-1633303024000-8065a6cfdd09?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=387&q=80',
  ),
  CardImage(
    label: 'Natureza',
    image:
        'https://images.unsplash.com/photo-1631189944771-466264f05965?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=870&q=80',
  ),
  CardImage(
    label: 'Natureza',
    image:
        'https://images.unsplash.com/photo-1676026273590-ac4b25e833af?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1633&q=80',
  ),
  CardImage(
    label: 'Cidade',
    image:
        'https://images.unsplash.com/photo-1675449651535-61444da80f53?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=750&q=80',
  ),
  CardImage(
    label: 'Cidade',
    image:
        'https://images.unsplash.com/photo-1675974147081-c26674a2dcfd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=730&q=80',
  ),
  CardImage(
    label: 'Natureza',
    image:
        'https://images.unsplash.com/photo-1676113415633-c3eead469bbd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80',
  ),
  CardImage(
    label: 'Natureza',
    image:
        'https://images.unsplash.com/photo-1675961311186-3d91a0046565?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=685&q=80',
  ),
  CardImage(
    label: 'Cidade',
    image:
        'https://images.unsplash.com/photo-1675792951600-cfac2818f456?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80',
  ),
  CardImage(
    label: 'Cidade',
    image:
        'https://images.unsplash.com/photo-1675703295843-dc501a6c20cf?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80',
  ),
  CardImage(
    label: 'Natureza',
    image:
        'https://images.unsplash.com/photo-1675505037481-b28384fe524d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1471&q=80',
  ),
  CardImage(
    label: 'Cidade',
    image:
        'https://images.unsplash.com/photo-1665932673802-859900243cd7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
  )
];

const regexEmail =
    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
